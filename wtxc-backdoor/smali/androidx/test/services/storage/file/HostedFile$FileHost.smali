.class public final enum Landroidx/test/services/storage/file/HostedFile$FileHost;
.super Ljava/lang/Enum;
.source "HostedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileHost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$FileHost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;


# instance fields
.field private final authority:Ljava/lang/String;

.field private final writeable:Z


# direct methods
.method private static synthetic $values()[Landroidx/test/services/storage/file/HostedFile$FileHost;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 98
    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 99
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "TEST_FILE"

    const/4 v2, 0x0

    const-string v3, "androidx.test.services.storage.runfiles"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 100
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "EXPORT_PROPERTIES"

    const/4 v2, 0x1

    const-string v3, "androidx.test.services.storage.properties"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 101
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "OUTPUT"

    const/4 v3, 0x2

    const-string v4, "androidx.test.services.storage.outputfiles"

    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 102
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "INTERNAL_USE_ONLY"

    const/4 v3, 0x3

    const-string v4, "androidx.test.services.storage._internal_use_files"

    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 98
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$FileHost;->$values()[Landroidx/test/services/storage/file/HostedFile$FileHost;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
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
            "authority",
            "writeable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->authority:Ljava/lang/String;

    .line 109
    iput-boolean p4, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->writeable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileHost;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 98
    const-class v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-object p0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$FileHost;
    .locals 1

    .line 98
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$FileHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-object v0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public isWritable()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->writeable:Z

    return v0
.end method
