.class abstract enum Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;",
        ">;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

.field public static final enum KEY:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

.field public static final enum VALUE:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;


# direct methods
.method private static synthetic $values()[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    .line 1
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->KEY:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->VALUE:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->KEY:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    .line 2
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$2;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->VALUE:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    .line 3
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->$values()[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

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

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/collect/Maps$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    return-object v0
.end method
