.class abstract enum Landroidx/test/services/events/internal/Throwables$State;
.super Ljava/lang/Enum;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/events/internal/Throwables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/events/internal/Throwables$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/events/internal/Throwables$State;

.field public static final enum DONE:Landroidx/test/services/events/internal/Throwables$State;

.field public static final enum PROCESSING_OTHER_CODE:Landroidx/test/services/events/internal/Throwables$State;

.field public static final enum PROCESSING_REFLECTION_CODE:Landroidx/test/services/events/internal/Throwables$State;

.field public static final enum PROCESSING_TEST_FRAMEWORK_CODE:Landroidx/test/services/events/internal/Throwables$State;


# direct methods
.method private static synthetic $values()[Landroidx/test/services/events/internal/Throwables$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/test/services/events/internal/Throwables$State;

    .line 121
    sget-object v1, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_OTHER_CODE:Landroidx/test/services/events/internal/Throwables$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_TEST_FRAMEWORK_CODE:Landroidx/test/services/events/internal/Throwables$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_REFLECTION_CODE:Landroidx/test/services/events/internal/Throwables$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/events/internal/Throwables$State;->DONE:Landroidx/test/services/events/internal/Throwables$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Landroidx/test/services/events/internal/Throwables$State$1;

    const-string v1, "PROCESSING_OTHER_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/internal/Throwables$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_OTHER_CODE:Landroidx/test/services/events/internal/Throwables$State;

    .line 131
    new-instance v0, Landroidx/test/services/events/internal/Throwables$State$2;

    const-string v1, "PROCESSING_TEST_FRAMEWORK_CODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/internal/Throwables$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_TEST_FRAMEWORK_CODE:Landroidx/test/services/events/internal/Throwables$State;

    .line 142
    new-instance v0, Landroidx/test/services/events/internal/Throwables$State$3;

    const-string v1, "PROCESSING_REFLECTION_CODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/internal/Throwables$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/internal/Throwables$State;->PROCESSING_REFLECTION_CODE:Landroidx/test/services/events/internal/Throwables$State;

    .line 154
    new-instance v0, Landroidx/test/services/events/internal/Throwables$State$4;

    const-string v1, "DONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/test/services/events/internal/Throwables$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/services/events/internal/Throwables$State;->DONE:Landroidx/test/services/events/internal/Throwables$State;

    .line 121
    invoke-static {}, Landroidx/test/services/events/internal/Throwables$State;->$values()[Landroidx/test/services/events/internal/Throwables$State;

    move-result-object v0

    sput-object v0, Landroidx/test/services/events/internal/Throwables$State;->$VALUES:[Landroidx/test/services/events/internal/Throwables$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/services/events/internal/Throwables$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/test/services/events/internal/Throwables$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/events/internal/Throwables$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 121
    const-class v0, Landroidx/test/services/events/internal/Throwables$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/events/internal/Throwables$State;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/events/internal/Throwables$State;
    .locals 1

    .line 121
    sget-object v0, Landroidx/test/services/events/internal/Throwables$State;->$VALUES:[Landroidx/test/services/events/internal/Throwables$State;

    invoke-virtual {v0}, [Landroidx/test/services/events/internal/Throwables$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/events/internal/Throwables$State;

    return-object v0
.end method


# virtual methods
.method protected abstract processLine(Ljava/lang/String;)Landroidx/test/services/events/internal/Throwables$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation
.end method

.method public final processStackTraceElement(Ljava/lang/StackTraceElement;)Landroidx/test/services/events/internal/Throwables$State;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/test/services/events/internal/Throwables$State;->processLine(Ljava/lang/String;)Landroidx/test/services/events/internal/Throwables$State;

    move-result-object p1

    return-object p1
.end method
