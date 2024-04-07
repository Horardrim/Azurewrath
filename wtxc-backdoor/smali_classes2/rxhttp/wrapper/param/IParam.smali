.class public interface abstract Lrxhttp/wrapper/param/IParam;
.super Ljava/lang/Object;
.source "IParam.java"


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
.method public abstract add(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TP;"
        }
    .end annotation
.end method

.method public abstract addAllEncodedQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)TP;"
        }
    .end annotation
.end method

.method public abstract addAllEncodedQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TP;"
        }
    .end annotation
.end method

.method public abstract addAllQuery(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)TP;"
        }
    .end annotation
.end method

.method public abstract addAllQuery(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TP;"
        }
    .end annotation
.end method

.method public abstract addEncodedPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addEncodedQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addPath(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addQuery(Ljava/lang/String;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract cacheControl(Lokhttp3/CacheControl;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/CacheControl;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract isAssemblyEnabled()Z
.end method

.method public abstract setAssemblyEnabled(Z)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TP;"
        }
    .end annotation
.end method

.method public abstract setUrl(Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract tag(Ljava/lang/Class;Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)TP;"
        }
    .end annotation
.end method

.method public abstract tag(Ljava/lang/Object;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TP;"
        }
    .end annotation
.end method
