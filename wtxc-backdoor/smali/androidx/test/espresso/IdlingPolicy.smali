.class public final Landroidx/test/espresso/IdlingPolicy;
.super Ljava/lang/Object;
.source "IdlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/IdlingPolicy$Builder;,
        Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IdlingPolicy"


# instance fields
.field private final disableOnTimeout:Z

.field private final errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field private final idleTimeout:J

.field private final timeoutIfDebuggerAttached:Z

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/IdlingPolicy$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$100(Landroidx/test/espresso/IdlingPolicy$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$100(Landroidx/test/espresso/IdlingPolicy$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    .line 4
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$200(Landroidx/test/espresso/IdlingPolicy$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$300(Landroidx/test/espresso/IdlingPolicy$Builder;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 6
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$400(Landroidx/test/espresso/IdlingPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/test/espresso/IdlingPolicy;->timeoutIfDebuggerAttached:Z

    .line 7
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$500(Landroidx/test/espresso/IdlingPolicy$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/test/espresso/IdlingPolicy;->disableOnTimeout:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/IdlingPolicy$Builder;Landroidx/test/espresso/IdlingPolicy$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/test/espresso/IdlingPolicy;-><init>(Landroidx/test/espresso/IdlingPolicy$Builder;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/test/espresso/IdlingPolicy;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/test/espresso/IdlingPolicy;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/test/espresso/IdlingPolicy;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    return-object p0
.end method


# virtual methods
.method public getDisableOnTimeout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/test/espresso/IdlingPolicy;->disableOnTimeout:Z

    return v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    return-wide v0
.end method

.method public getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public getTimeoutIfDebuggerAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/test/espresso/IdlingPolicy;->timeoutIfDebuggerAttached:Z

    return v0
.end method

.method public handleTimeout(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$1;->$SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I

    iget-object v1, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1e

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "These resources are not idle: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IdlingPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "should never reach here."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p2, Landroidx/test/espresso/IdlingResourceTimeoutException;

    invoke-direct {p2, p1}, Landroidx/test/espresso/IdlingResourceTimeoutException;-><init>(Ljava/util/List;)V

    throw p2

    .line 5
    :cond_2
    invoke-static {p1, p2}, Landroidx/test/espresso/AppNotIdleException;->create(Ljava/util/List;Ljava/lang/String;)Landroidx/test/espresso/AppNotIdleException;

    move-result-object p1

    throw p1
.end method

.method toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>(Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/IdlingPolicy$1;)V

    return-object v0
.end method
