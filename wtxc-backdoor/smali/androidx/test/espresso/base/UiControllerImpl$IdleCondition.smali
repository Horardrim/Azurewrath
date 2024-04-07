.class final enum Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
.super Ljava/lang/Enum;
.source "UiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IdleCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field public static final enum MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 1
    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "DELAY_HAS_PAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 2
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "ASYNC_TASKS_HAVE_IDLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 3
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "COMPAT_TASKS_HAVE_IDLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 4
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "KEY_INJECT_HAS_COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 5
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "MOTION_INJECTION_HAS_COMPLETED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 6
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    const-string v1, "DYNAMIC_TASKS_HAVE_IDLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 7
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->$values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createConditionSet()Ljava/util/BitSet;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    return-object v0
.end method

.method public static handleMessage(Landroid/os/Message;Ljava/util/BitSet;I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    move-result-object v0

    .line 2
    iget v1, p0, Landroid/os/Message;->what:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/os/Message;->what:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v1, p0, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    .line 4
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, p2, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->signal(Ljava/util/BitSet;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x5a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ignoring signal of: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from previous generation: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " current generation: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    .locals 1

    const-class v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->$VALUES:[Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-virtual {v0}, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    return-object v0
.end method


# virtual methods
.method public createSignal(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public isSignaled(Ljava/util/BitSet;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public reset(Ljava/util/BitSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method protected signal(Ljava/util/BitSet;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
