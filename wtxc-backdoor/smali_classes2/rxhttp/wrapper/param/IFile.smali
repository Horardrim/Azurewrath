.class public interface abstract Lrxhttp/wrapper/param/IFile;
.super Ljava/lang/Object;
.source "IFile.java"


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
.method public abstract addFile(Ljava/lang/String;Ljava/io/File;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addFile(Ljava/lang/String;Ljava/lang/String;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addFile(Lrxhttp/wrapper/entity/UpFile;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrxhttp/wrapper/entity/UpFile;",
            ")TP;"
        }
    .end annotation
.end method

.method public abstract addFiles(Ljava/lang/String;Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)TP;"
        }
    .end annotation
.end method

.method public abstract addFiles(Ljava/util/List;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lrxhttp/wrapper/entity/UpFile;",
            ">;)TP;"
        }
    .end annotation
.end method

.method public abstract addFiles(Ljava/util/Map;)Lrxhttp/wrapper/param/Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)TP;"
        }
    .end annotation
.end method
