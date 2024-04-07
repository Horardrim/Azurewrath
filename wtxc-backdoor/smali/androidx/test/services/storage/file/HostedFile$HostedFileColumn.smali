.class public final enum Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
.super Ljava/lang/Enum;
.source "HostedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostedFileColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;


# instance fields
.field private final androidType:I

.field private final columnName:Ljava/lang/String;

.field private final columnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final position:I


# direct methods
.method private static synthetic $values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 26
    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 27
    new-instance v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v4, Ljava/lang/String;

    const-string v1, "NAME"

    const/4 v2, 0x0

    const-string v3, "name"

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 28
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, Ljava/lang/String;

    const-string v9, "TYPE"

    const/4 v10, 0x1

    const-string v11, "type"

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 29
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v5, Ljava/lang/Long;

    const-string v2, "SIZE"

    const/4 v3, 0x2

    const-string v4, "size"

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 30
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, [Ljava/lang/Byte;

    const-string v9, "DATA"

    const/4 v10, 0x3

    const-string v11, "_data"

    const/4 v13, 0x4

    const/4 v14, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 31
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v5, Ljava/lang/String;

    const-string v2, "DISPLAY_NAME"

    const/4 v3, 0x4

    const-string v4, "_display_name"

    const/4 v6, 0x3

    const/4 v7, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 32
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, Ljava/lang/Long;

    const-string v9, "SIZE_2"

    const/4 v10, 0x5

    const-string v11, "_size"

    const/4 v13, 0x2

    const/4 v14, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 26
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "columnName",
            "columnType",
            "androidType",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    .line 42
    invoke-static {p4}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    .line 43
    iput p5, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    .line 44
    iput p6, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    return-void
.end method

.method public static getColumnNames()[Ljava/lang/String;
    .locals 5

    .line 64
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    move-result-object v0

    .line 65
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 67
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->getColumnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 26
    const-class v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1

    .line 26
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-object v0
.end method


# virtual methods
.method public getAndroidType()I
    .locals 1

    .line 56
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    return v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 60
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    return v0
.end method
