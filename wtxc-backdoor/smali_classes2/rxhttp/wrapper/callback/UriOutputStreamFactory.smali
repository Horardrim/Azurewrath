.class public final Lrxhttp/wrapper/callback/UriOutputStreamFactory;
.super Lrxhttp/wrapper/callback/OutputStreamFactory;
.source "OutputStreamFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrxhttp/wrapper/callback/OutputStreamFactory<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lrxhttp/wrapper/callback/UriOutputStreamFactory;",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "uri",
        "(Landroid/content/Context;Landroid/net/Uri;)V",
        "getOutputStream",
        "Lrxhttp/wrapper/entity/ExpandOutputStream;",
        "response",
        "Lokhttp3/Response;",
        "offsetSize",
        "",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lrxhttp/wrapper/callback/OutputStreamFactory;-><init>()V

    .line 45
    iput-object p1, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getOutputStream(Lokhttp3/Response;)Lrxhttp/wrapper/entity/ExpandOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lrxhttp/wrapper/entity/ExpandOutputStream<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->context:Landroid/content/Context;

    invoke-static {p1}, Lrxhttp/wrapper/callback/OutputStreamFactoryKt;->access$getAppend(Lokhttp3/Response;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lrxhttp/wrapper/entity/ExpandOutputStreamKt;->toOutputStream(Landroid/net/Uri;Landroid/content/Context;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public offsetSize()J
    .locals 2

    .line 48
    iget-object v0, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lrxhttp/wrapper/callback/UriOutputStreamFactory;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lrxhttp/wrapper/utils/UriUtil;->length(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
