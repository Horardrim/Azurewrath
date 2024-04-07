.class public final enum Landroidx/test/services/storage/file/HostedFile$FileType;
.super Ljava/lang/Enum;
.source "HostedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

.field public static final enum DIRECTORY:Landroidx/test/services/storage/file/HostedFile$FileType;

.field public static final enum FILE:Landroidx/test/services/storage/file/HostedFile$FileType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 74
    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileType;->FILE:Landroidx/test/services/storage/file/HostedFile$FileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileType;->DIRECTORY:Landroidx/test/services/storage/file/HostedFile$FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileType;

    const-string v1, "FILE"

    const/4 v2, 0x0

    const-string v3, "f"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/services/storage/file/HostedFile$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->FILE:Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 76
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileType;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x1

    const-string v3, "d"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/services/storage/file/HostedFile$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->DIRECTORY:Landroidx/test/services/storage/file/HostedFile$FileType;

    .line 74
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$FileType;->$values()[Landroidx/test/services/storage/file/HostedFile$FileType;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$FileType;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromTypeCode(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$FileType;->values()[Landroidx/test/services/storage/file/HostedFile$FileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    invoke-virtual {v3}, Landroidx/test/services/storage/file/HostedFile$FileType;->getTypeCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown type: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 74
    const-class v0, Landroidx/test/services/storage/file/HostedFile$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/storage/file/HostedFile$FileType;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$FileType;
    .locals 1

    .line 74
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileType;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileType;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$FileType;

    return-object v0
.end method


# virtual methods
.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$FileType;->type:Ljava/lang/String;

    return-object v0
.end method
