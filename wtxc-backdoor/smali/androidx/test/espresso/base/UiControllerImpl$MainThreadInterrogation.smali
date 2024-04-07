.class final Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Landroidx/test/espresso/base/Interrogator$InterrogationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadInterrogation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/base/Interrogator$InterrogationHandler<",
        "Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final conditionSet:Ljava/util/BitSet;

.field private final conditions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            ">;"
        }
    .end annotation
.end field

.field private execCount:I

.field private final giveUpAtMs:J

.field private lastMessage:Ljava/lang/String;

.field private status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;


# direct methods
.method constructor <init>(Ljava/util/EnumSet;Ljava/util/BitSet;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            ">;",
            "Ljava/util/BitSet;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    .line 4
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditions:Ljava/util/EnumSet;

    .line 5
    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionSet:Ljava/util/BitSet;

    .line 6
    iput-wide p3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->giveUpAtMs:J

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    return p0
.end method

.method private conditionsMet()Z
    .locals 8

    .line 1
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    iget-object v3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditions:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 6
    iget-object v5, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->isSignaled(Ljava/util/BitSet;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->name()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x29

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Waiting for: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " iterations."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private continueOrTimeout()Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->giveUpAtMs:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    .line 4
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->TIMED_OUT:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public barrierUp()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method

.method public beforeTaskDispatch()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I

    .line 2
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method

.method public get()Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->get()Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->lastMessage:Ljava/lang/String;

    return-object v0
.end method

.method interruptInterrogation()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->status:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    return-void
.end method

.method public queueEmpty()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionsMet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public quitting()V
    .locals 0

    return-void
.end method

.method public setMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->lastMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "NPE calling message toString(): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->lastMessage:Ljava/lang/String;

    return-void
.end method

.method public taskDueLong()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->conditionsMet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public taskDueSoon()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->continueOrTimeout()Z

    move-result v0

    return v0
.end method
