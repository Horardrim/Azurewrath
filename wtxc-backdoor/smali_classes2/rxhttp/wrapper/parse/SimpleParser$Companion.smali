.class public final Lrxhttp/wrapper/parse/SimpleParser$Companion;
.super Ljava/lang/Object;
.source "SimpleParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrxhttp/wrapper/parse/SimpleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007H\u0087\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/SimpleParser$Companion;",
        "",
        "()V",
        "get",
        "Lrxhttp/wrapper/parse/SimpleParser;",
        "T",
        "type",
        "Ljava/lang/Class;",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lrxhttp/wrapper/parse/SimpleParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Lrxhttp/wrapper/parse/SimpleParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lrxhttp/wrapper/parse/SimpleParser<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-direct {v0, p1}, Lrxhttp/wrapper/parse/SimpleParser;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method
