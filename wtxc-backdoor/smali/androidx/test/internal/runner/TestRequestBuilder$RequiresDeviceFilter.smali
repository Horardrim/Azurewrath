.class Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;
.super Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequiresDeviceFilter"
.end annotation


# static fields
.field static final EMULATOR_HARDWARE_GCE:Ljava/lang/String; = "gce_x86"

.field static final EMULATOR_HARDWARE_GOLDFISH:Ljava/lang/String; = "goldfish"

.field static final EMULATOR_HARDWARE_RANCHU:Ljava/lang/String; = "ranchu"


# instance fields
.field private final emulatorHardwareNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/internal/runner/TestRequestBuilder;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    .line 307
    const-class p1, Landroidx/test/filters/RequiresDevice;

    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;-><init>(Ljava/lang/Class;)V

    .line 301
    new-instance p1, Ljava/util/HashSet;

    const-string v0, "goldfish"

    const-string v1, "ranchu"

    const-string v2, "gce_x86"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->emulatorHardwareNames:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "skip tests annotated with RequiresDevice if necessary"

    .line 322
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected evaluateTest(Lorg/junit/runner/Description;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 312
    invoke-super {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;->evaluateTest(Lorg/junit/runner/Description;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->emulatorHardwareNames:Ljava/util/Set;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;->this$0:Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-static {v1}, Landroidx/test/internal/runner/TestRequestBuilder;->access$400(Landroidx/test/internal/runner/TestRequestBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method
