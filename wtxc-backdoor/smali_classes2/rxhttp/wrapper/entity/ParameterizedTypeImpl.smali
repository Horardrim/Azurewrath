.class public final Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.kt"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B+\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0008\"\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0008H\u0016\u00a2\u0006\u0002\u0010\u000cJ\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lrxhttp/wrapper/entity/ParameterizedTypeImpl;",
        "Ljava/lang/reflect/ParameterizedType;",
        "rawType",
        "Ljava/lang/reflect/Type;",
        "actualType",
        "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V",
        "ownerType",
        "actualTypeArguments",
        "",
        "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V",
        "[Ljava/lang/reflect/Type;",
        "getActualTypeArguments",
        "()[Ljava/lang/reflect/Type;",
        "getOwnerType",
        "getRawType",
        "Companion",
        "rxhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->Companion:Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 2

    const-string v0, "rawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 17
    invoke-direct {p0, p2, p1, v0}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "rawType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualTypeArguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 13
    iput-object p2, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 14
    iput-object p3, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public static final varargs get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->Companion:Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;

    invoke-virtual {v0, p0, p1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;->get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->Companion:Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;

    invoke-virtual {v0, p0, p1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 20
    iget-object v0, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 24
    iget-object v0, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method
