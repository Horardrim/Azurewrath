.class public Lrxhttp/wrapper/entity/ProgressT;
.super Lrxhttp/wrapper/entity/Progress;
.source "ProgressT.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrxhttp/wrapper/entity/Progress;"
    }
.end annotation


# instance fields
.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lrxhttp/wrapper/entity/Progress;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lrxhttp/wrapper/entity/Progress;-><init>()V

    .line 15
    iput-object p1, p0, Lrxhttp/wrapper/entity/ProgressT;->result:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrxhttp/wrapper/entity/Progress;)V
    .locals 6

    .line 19
    invoke-virtual {p1}, Lrxhttp/wrapper/entity/Progress;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/Progress;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lrxhttp/wrapper/entity/Progress;->getTotalSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lrxhttp/wrapper/entity/Progress;-><init>(IJJ)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lrxhttp/wrapper/entity/ProgressT;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lrxhttp/wrapper/entity/ProgressT;->result:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressT{progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lrxhttp/wrapper/entity/ProgressT;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lrxhttp/wrapper/entity/ProgressT;->getCurrentSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lrxhttp/wrapper/entity/ProgressT;->getTotalSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrxhttp/wrapper/entity/ProgressT;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
