.class public Lrxhttp/wrapper/parse/SimpleParser;
.super Lrxhttp/wrapper/parse/TypeParser;
.source "SimpleParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrxhttp/wrapper/parse/SimpleParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrxhttp/wrapper/parse/TypeParser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u000b*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000bB\u0007\u0008\u0014\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/SimpleParser;",
        "T",
        "Lrxhttp/wrapper/parse/TypeParser;",
        "()V",
        "type",
        "Ljava/lang/reflect/Type;",
        "(Ljava/lang/reflect/Type;)V",
        "onParse",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)Ljava/lang/Object;",
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
.field public static final Companion:Lrxhttp/wrapper/parse/SimpleParser$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrxhttp/wrapper/parse/SimpleParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrxhttp/wrapper/parse/SimpleParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrxhttp/wrapper/parse/SimpleParser;->Companion:Lrxhttp/wrapper/parse/SimpleParser$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lrxhttp/wrapper/parse/TypeParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 16
    invoke-direct {p0, v0}, Lrxhttp/wrapper/parse/TypeParser;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static final get(Ljava/lang/Class;)Lrxhttp/wrapper/parse/SimpleParser;
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

    sget-object v0, Lrxhttp/wrapper/parse/SimpleParser;->Companion:Lrxhttp/wrapper/parse/SimpleParser$Companion;

    invoke-virtual {v0, p0}, Lrxhttp/wrapper/parse/SimpleParser$Companion;->get(Ljava/lang/Class;)Lrxhttp/wrapper/parse/SimpleParser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onParse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lrxhttp/wrapper/parse/SimpleParser;->types:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lrxhttp/wrapper/utils/Converter;->convert(Lokhttp3/Response;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
