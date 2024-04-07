.class public Lcom/qinyue/vcommon/http/PageList;
.super Ljava/lang/Object;
.source "PageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pageInfo:Lcom/qinyue/vcommon/http/HttpPageInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/qinyue/vcommon/http/PageList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getPageInfo()Lcom/qinyue/vcommon/http/HttpPageInfoBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/qinyue/vcommon/http/PageList;->pageInfo:Lcom/qinyue/vcommon/http/HttpPageInfoBean;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/qinyue/vcommon/http/HttpPageInfoBean;

    invoke-direct {v0}, Lcom/qinyue/vcommon/http/HttpPageInfoBean;-><init>()V

    :cond_0
    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/qinyue/vcommon/http/PageList;->list:Ljava/util/List;

    return-void
.end method

.method public setPageInfo(Lcom/qinyue/vcommon/http/HttpPageInfoBean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/qinyue/vcommon/http/PageList;->pageInfo:Lcom/qinyue/vcommon/http/HttpPageInfoBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageList{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qinyue/vcommon/http/PageList;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qinyue/vcommon/http/PageList;->pageInfo:Lcom/qinyue/vcommon/http/HttpPageInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
