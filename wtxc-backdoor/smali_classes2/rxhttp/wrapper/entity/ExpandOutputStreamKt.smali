.class public final Lrxhttp/wrapper/entity/ExpandOutputStreamKt;
.super Ljava/lang/Object;
.source "ExpandOutputStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u001a$\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u00070\u0001*\u00020\t2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u00a8\u0006\n"
    }
    d2 = {
        "toOutputStream",
        "Lrxhttp/wrapper/entity/ExpandOutputStream;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "append",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/io/File;",
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
.method public static final toOutputStream(Landroid/net/Uri;Landroid/content/Context;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Z)",
            "Lrxhttp/wrapper/entity/ExpandOutputStream<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "wa"

    goto :goto_0

    :cond_0
    const-string p2, "w"

    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 28
    new-instance p2, Lrxhttp/wrapper/entity/ExpandOutputStream;

    const-string v0, "os"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lrxhttp/wrapper/entity/ExpandOutputStream;-><init>(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public static final toOutputStream(Ljava/io/File;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lrxhttp/wrapper/entity/ExpandOutputStream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lrxhttp/wrapper/entity/ExpandOutputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lrxhttp/wrapper/entity/ExpandOutputStream;-><init>(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static synthetic toOutputStream$default(Landroid/net/Uri;Landroid/content/Context;ZILjava/lang/Object;)Lrxhttp/wrapper/entity/ExpandOutputStream;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-static {p0, p1, p2}, Lrxhttp/wrapper/entity/ExpandOutputStreamKt;->toOutputStream(Landroid/net/Uri;Landroid/content/Context;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toOutputStream$default(Ljava/io/File;ZILjava/lang/Object;)Lrxhttp/wrapper/entity/ExpandOutputStream;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lrxhttp/wrapper/entity/ExpandOutputStreamKt;->toOutputStream(Ljava/io/File;Z)Lrxhttp/wrapper/entity/ExpandOutputStream;

    move-result-object p0

    return-object p0
.end method
