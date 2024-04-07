.class public abstract Lrxhttp/wrapper/parse/TypeParser;
.super Ljava/lang/Object;
.source "TypeParser.kt"

# interfaces
.implements Lrxhttp/wrapper/parse/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrxhttp/wrapper/parse/Parser<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u001b\u0008\u0016\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\"\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u00058\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lrxhttp/wrapper/parse/TypeParser;",
        "T",
        "Lrxhttp/wrapper/parse/Parser;",
        "()V",
        "types",
        "",
        "Ljava/lang/reflect/Type;",
        "([Ljava/lang/reflect/Type;)V",
        "[Ljava/lang/reflect/Type;",
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
.field protected types:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lrxhttp/wrapper/utils/TypeUtil;->getActualTypeParameters(Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lrxhttp/wrapper/parse/TypeParser;->types:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lrxhttp/wrapper/parse/TypeParser;->types:[Ljava/lang/reflect/Type;

    return-void
.end method
