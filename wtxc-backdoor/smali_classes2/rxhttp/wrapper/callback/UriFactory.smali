.class public abstract Lrxhttp/wrapper/callback/UriFactory;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lrxhttp/wrapper/callback/UriFactory;",
        "Lrxhttp/wrapper/callback/OutputStreamFactory;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getOutputStream",
        "Lrxhttp/wrapper/entity/ExpandOutputStream;",
        "response",
        "Lokhttp3/Response;",
        "insert",
        "offsetSize",
        "",
        "query",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lrxhttp/wrapper/callback/OutputStreamFactory;-><init>()V

    .line 29
    iput-object p1, p0, Lrxhttp/wrapper/callback/UriFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lrxhttp/wrapper/callback/UriFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getOutputStream(Lokhttp3/Response;)Lrxhttp/wrapper/entity/ExpandOutputStream;
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

    .line 40
    invoke-virtual {p0, p1}, Lrxhttp/wrapper/callback/UriFactory;->insert(Lokhttp3/Response;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lrxhttp/wrapper/callback/UriFactory;->context:Landroid/content/Context;

    invoke-static {p1}, Lrxhttp/wrapper/callback/OutputStreamFactoryKt;->access$getAppend(Lokhttp3/Response;)Z

    move-result p1

    invoke-static {v0, v1, p1}, Lrxhttp/wrapper/entity/ExpandOutputStreamKt;->toOutputStream(Landroid/net/Uri;Landroid/content/Context;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public abstract insert(Lokhttp3/Response;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public offsetSize()J
    .locals 2

    .line 37
    invoke-virtual {p0}, Lrxhttp/wrapper/callback/UriFactory;->query()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lrxhttp/wrapper/callback/UriFactory;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lrxhttp/wrapper/utils/UriUtil;->length(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
