.class public final Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0008\"\u00020\u0006H\u0087\u0002\u00a2\u0006\u0002\u0010\tJ)\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0008\"\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;",
        "",
        "()V",
        "get",
        "Lrxhttp/wrapper/entity/ParameterizedTypeImpl;",
        "rawType",
        "Ljava/lang/reflect/Type;",
        "types",
        "",
        "(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;",
        "getParameterized",
        "actualTypeArguments",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs get(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    .line 44
    aget-object v1, p2, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v0, :cond_0

    .line 46
    new-instance v2, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    aget-object v3, p2, v0

    invoke-direct {v2, v3, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Type;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance p2, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    invoke-direct {p2, p1, v1}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public final varargs getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lrxhttp/wrapper/entity/ParameterizedTypeImpl;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "rawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualTypeArguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lrxhttp/wrapper/entity/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
