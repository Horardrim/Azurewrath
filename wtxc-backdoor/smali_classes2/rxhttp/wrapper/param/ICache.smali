.class public interface abstract Lrxhttp/wrapper/param/ICache;
.super Ljava/lang/Object;
.source "ICache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lrxhttp/wrapper/param/Param<",
        "TP;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getCacheMode()Lrxhttp/wrapper/cahce/CacheMode;
.end method

.method public abstract getCacheStrategy()Lrxhttp/wrapper/cahce/CacheStrategy;
.end method

.method public abstract getCacheValidTime()J
.end method

.method public abstract setCacheKey(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract setCacheMode(Lrxhttp/wrapper/cahce/CacheMode;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/cahce/CacheMode;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract setCacheValidTime(J)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TP;"
        }
    .end annotation
.end method
