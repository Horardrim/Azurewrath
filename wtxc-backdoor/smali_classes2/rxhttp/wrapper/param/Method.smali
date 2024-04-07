.class public final enum Lrxhttp/wrapper/param/Method;
.super Ljava/lang/Enum;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrxhttp/wrapper/param/Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrxhttp/wrapper/param/Method;

.field public static final enum DELETE:Lrxhttp/wrapper/param/Method;

.field public static final enum GET:Lrxhttp/wrapper/param/Method;

.field public static final enum HEAD:Lrxhttp/wrapper/param/Method;

.field public static final enum PATCH:Lrxhttp/wrapper/param/Method;

.field public static final enum POST:Lrxhttp/wrapper/param/Method;

.field public static final enum PUT:Lrxhttp/wrapper/param/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lrxhttp/wrapper/param/Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrxhttp/wrapper/param/Method;->GET:Lrxhttp/wrapper/param/Method;

    .line 12
    new-instance v1, Lrxhttp/wrapper/param/Method;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrxhttp/wrapper/param/Method;->HEAD:Lrxhttp/wrapper/param/Method;

    .line 13
    new-instance v3, Lrxhttp/wrapper/param/Method;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrxhttp/wrapper/param/Method;->POST:Lrxhttp/wrapper/param/Method;

    .line 14
    new-instance v5, Lrxhttp/wrapper/param/Method;

    const-string v7, "PUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lrxhttp/wrapper/param/Method;->PUT:Lrxhttp/wrapper/param/Method;

    .line 15
    new-instance v7, Lrxhttp/wrapper/param/Method;

    const-string v9, "PATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lrxhttp/wrapper/param/Method;->PATCH:Lrxhttp/wrapper/param/Method;

    .line 16
    new-instance v9, Lrxhttp/wrapper/param/Method;

    const-string v11, "DELETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lrxhttp/wrapper/param/Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lrxhttp/wrapper/param/Method;->DELETE:Lrxhttp/wrapper/param/Method;

    const/4 v11, 0x6

    new-array v11, v11, [Lrxhttp/wrapper/param/Method;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 9
    sput-object v11, Lrxhttp/wrapper/param/Method;->$VALUES:[Lrxhttp/wrapper/param/Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrxhttp/wrapper/param/Method;
    .locals 1

    .line 9
    const-class v0, Lrxhttp/wrapper/param/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrxhttp/wrapper/param/Method;

    return-object p0
.end method

.method public static values()[Lrxhttp/wrapper/param/Method;
    .locals 1

    .line 9
    sget-object v0, Lrxhttp/wrapper/param/Method;->$VALUES:[Lrxhttp/wrapper/param/Method;

    invoke-virtual {v0}, [Lrxhttp/wrapper/param/Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrxhttp/wrapper/param/Method;

    return-object v0
.end method


# virtual methods
.method public isDelete()Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGet()Z
    .locals 2

    .line 20
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHead()Z
    .locals 2

    .line 28
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPatch()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPost()Z
    .locals 2

    .line 24
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPut()Z
    .locals 2

    .line 32
    invoke-virtual {p0}, Lrxhttp/wrapper/param/Method;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
