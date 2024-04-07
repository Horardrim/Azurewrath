.class public final Landroidx/test/internal/runner/TestSize;
.super Ljava/lang/Object;
.source "TestSize.java"


# static fields
.field private static final ALL_SIZES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/internal/runner/TestSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final LARGE:Landroidx/test/internal/runner/TestSize;

.field public static final MEDIUM:Landroidx/test/internal/runner/TestSize;

.field public static final NONE:Landroidx/test/internal/runner/TestSize;

.field public static final SMALL:Landroidx/test/internal/runner/TestSize;


# instance fields
.field private final platformAnnotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final runnerFilterAnnotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeQualifierName:Ljava/lang/String;

.field private final testSizeRunTimeThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Landroidx/test/internal/runner/TestSize;

    const-class v1, Landroidx/test/filters/SmallTest;

    const-string v2, "small"

    const-string v3, "android.test.suitebuilder.annotation.SmallTest"

    const/high16 v4, 0x43480000    # 200.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v0, Landroidx/test/internal/runner/TestSize;->SMALL:Landroidx/test/internal/runner/TestSize;

    .line 44
    new-instance v1, Landroidx/test/internal/runner/TestSize;

    const-class v2, Landroidx/test/filters/MediumTest;

    const-string v3, "medium"

    const-string v4, "android.test.suitebuilder.annotation.MediumTest"

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v1, Landroidx/test/internal/runner/TestSize;->MEDIUM:Landroidx/test/internal/runner/TestSize;

    .line 52
    new-instance v2, Landroidx/test/internal/runner/TestSize;

    const-class v3, Landroidx/test/filters/LargeTest;

    const-string v4, "large"

    const-string v5, "android.test.suitebuilder.annotation.LargeTest"

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v2, v4, v3, v5, v6}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v2, Landroidx/test/internal/runner/TestSize;->LARGE:Landroidx/test/internal/runner/TestSize;

    .line 62
    new-instance v3, Landroidx/test/internal/runner/TestSize;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v5, v6}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v3, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 64
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroidx/test/internal/runner/TestSize;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 65
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sizeQualifierName",
            "runnerFilterAnnotationClass",
            "legacyPlatformAnnotationClassName",
            "testSizeRuntimeThreshold"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    .line 84
    invoke-static {p3}, Landroidx/test/internal/runner/TestSize;->loadPlatformAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 85
    iput-object p2, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    .line 86
    iput p4, p0, Landroidx/test/internal/runner/TestSize;->testSizeRunTimeThreshold:F

    return-void
.end method

.method public static fromDescription(Lorg/junit/runner/Description;)Landroidx/test/internal/runner/TestSize;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 197
    sget-object v0, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 199
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 200
    invoke-virtual {v2, p0}, Landroidx/test/internal/runner/TestSize;->testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 206
    :cond_1
    sget-object v1, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v1, v0}, Landroidx/test/internal/runner/TestSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 208
    invoke-virtual {v2, p0}, Landroidx/test/internal/runner/TestSize;->testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_3
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Landroidx/test/internal/runner/TestSize;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "testSize"
        }
    .end annotation

    .line 183
    sget-object v0, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 184
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 185
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFrameworkAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method private getRunnerAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getTestSizeForRunTime(F)Landroidx/test/internal/runner/TestSize;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRuntime"
        }
    .end annotation

    .line 156
    sget-object v0, Landroidx/test/internal/runner/TestSize;->SMALL:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0}, Landroidx/test/internal/runner/TestSize;->getRunTimeThreshold()F

    move-result v1

    invoke-static {p0, v1}, Landroidx/test/internal/runner/TestSize;->runTimeSmallerThanThreshold(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 158
    :cond_0
    sget-object v0, Landroidx/test/internal/runner/TestSize;->MEDIUM:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0}, Landroidx/test/internal/runner/TestSize;->getRunTimeThreshold()F

    move-result v1

    invoke-static {p0, v1}, Landroidx/test/internal/runner/TestSize;->runTimeSmallerThanThreshold(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 161
    :cond_1
    sget-object p0, Landroidx/test/internal/runner/TestSize;->LARGE:Landroidx/test/internal/runner/TestSize;

    return-object p0
.end method

.method private static hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnyTestSize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 169
    sget-object v0, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/TestSize;

    .line 170
    invoke-direct {v1}, Landroidx/test/internal/runner/TestSize;->getRunnerAnnotation()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 171
    invoke-direct {v1}, Landroidx/test/internal/runner/TestSize;->getFrameworkAnnotation()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static loadPlatformAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyPlatformAnnotationClassName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 95
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static runTimeSmallerThanThreshold(FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testRuntime",
            "runtimeThreshold"
        }
    .end annotation

    .line 237
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    check-cast p1, Landroidx/test/internal/runner/TestSize;

    .line 228
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    iget-object p1, p1, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRunTimeThreshold()F
    .locals 1

    .line 146
    iget v0, p0, Landroidx/test/internal/runner/TestSize;->testSizeRunTimeThreshold:F

    return v0
.end method

.method public getSizeQualifierName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 131
    :cond_0
    iget-object v1, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    invoke-static {p1, v1}, Landroidx/test/internal/runner/TestSize;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 132
    invoke-static {p1, v1}, Landroidx/test/internal/runner/TestSize;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 113
    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
