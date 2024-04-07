.class final Landroidx/test/internal/events/client/JUnitValidator;
.super Ljava/lang/Object;
.source "JUnitValidator.java"


# static fields
.field private static final INIT_ERROR_METHOD_NAME:Ljava/lang/String; = "initializationError"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validateDescription(Lorg/junit/runner/Description;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "initializationError"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
