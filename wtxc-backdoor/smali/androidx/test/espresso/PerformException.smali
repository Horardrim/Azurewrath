.class public final Landroidx/test/espresso/PerformException;
.super Ljava/lang/RuntimeException;
.source "PerformException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/PerformException$Builder;
    }
.end annotation


# static fields
.field private static final MESSAGE_FORMAT:Ljava/lang/String; = "Error performing \'%s\' on view \'%s\'."


# instance fields
.field private final actionDescription:Ljava/lang/String;

.field private final viewDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/PerformException$Builder;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$000(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$100(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Error performing \'%s\' on view \'%s\'."

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$200(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$000(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/espresso/PerformException;->actionDescription:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroidx/test/espresso/PerformException$Builder;->access$100(Landroidx/test/espresso/PerformException$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/espresso/PerformException;->viewDescription:Ljava/lang/String;

    const-string p1, "ThreadState-PerformException.txt"

    .line 7
    invoke-static {p1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/PerformException$Builder;Landroidx/test/espresso/PerformException$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/test/espresso/PerformException;-><init>(Landroidx/test/espresso/PerformException$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/PerformException;->actionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getViewDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/PerformException;->viewDescription:Ljava/lang/String;

    return-object v0
.end method
