.class public final Lrxhttp/wrapper/coroutines/RangeHeaderKt;
.super Ljava/lang/Object;
.source "RangeHeader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRangeHeader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeHeader.kt\nrxhttp/wrapper/coroutines/RangeHeaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "setRangeHeader",
        "",
        "Lrxhttp/wrapper/CallFactory;",
        "osFactory",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "append",
        "",
        "rxhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final setRangeHeader(Lrxhttp/wrapper/CallFactory;Lrxhttp/wrapper/callback/OutputStreamFactory;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/CallFactory;",
            "Lrxhttp/wrapper/callback/OutputStreamFactory<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 21
    instance-of p2, p0, Lrxhttp/wrapper/coroutines/RangeHeader;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lrxhttp/wrapper/callback/OutputStreamFactory;->offsetSize()J

    move-result-wide v1

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-ltz p1, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lrxhttp/wrapper/coroutines/RangeHeader;

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lrxhttp/wrapper/coroutines/RangeHeader;->setRangeHeader(JJZ)Lrxhttp/wrapper/CallFactory;

    :cond_0
    return-void
.end method
