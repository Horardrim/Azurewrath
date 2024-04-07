.class public final enum Landroidx/test/services/storage/file/PropertyFile$Column;
.super Ljava/lang/Enum;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/PropertyFile$Column;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

.field public static final enum NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

.field public static final enum VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final position:I


# direct methods
.method private static synthetic $values()[Landroidx/test/services/storage/file/PropertyFile$Column;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 30
    sget-object v1, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    const-string v1, "NAME"

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/test/services/storage/file/PropertyFile$Column;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 32
    new-instance v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    const-string v3, "value"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/test/services/storage/file/PropertyFile$Column;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 30
    invoke-static {}, Landroidx/test/services/storage/file/PropertyFile$Column;->$values()[Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "columnName",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->columnName:Ljava/lang/String;

    .line 39
    iput p4, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->position:I

    return-void
.end method

.method public static getNames()[Ljava/lang/String;
    .locals 5

    .line 51
    invoke-static {}, Landroidx/test/services/storage/file/PropertyFile$Column;->values()[Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v0

    .line 52
    invoke-static {}, Landroidx/test/services/storage/file/PropertyFile$Column;->values()[Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 54
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/test/services/storage/file/PropertyFile$Column;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/PropertyFile$Column;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/storage/file/PropertyFile$Column;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/PropertyFile$Column;
    .locals 1

    .line 30
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/PropertyFile$Column;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/PropertyFile$Column;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 47
    iget v0, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->position:I

    return v0
.end method
