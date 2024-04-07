.class public interface abstract Lrxhttp/wrapper/BodyParamFactory;
.super Ljava/lang/Object;
.source "CallFactory.kt"

# interfaces
.implements Lrxhttp/wrapper/CallFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0016\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lrxhttp/wrapper/BodyParamFactory;",
        "Lrxhttp/wrapper/CallFactory;",
        "param",
        "Lrxhttp/wrapper/param/AbstractBodyParam;",
        "getParam",
        "()Lrxhttp/wrapper/param/AbstractBodyParam;",
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


# virtual methods
.method public abstract getParam()Lrxhttp/wrapper/param/AbstractBodyParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrxhttp/wrapper/param/AbstractBodyParam<",
            "*>;"
        }
    .end annotation
.end method
