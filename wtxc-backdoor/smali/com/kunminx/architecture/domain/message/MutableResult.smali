.class public Lcom/kunminx/architecture/domain/message/MutableResult;
.super Lcom/kunminx/architecture/domain/message/Result;
.source "MutableResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunminx/architecture/domain/message/MutableResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kunminx/architecture/domain/message/Result<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/kunminx/architecture/domain/message/Result;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/kunminx/architecture/domain/message/Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lcom/kunminx/architecture/domain/message/MutableResult;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/kunminx/architecture/domain/message/MutableResult;->isAllowNullValue:Z

    return p1
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/kunminx/architecture/domain/message/Result;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lcom/kunminx/architecture/domain/message/Result;->setValue(Ljava/lang/Object;)V

    return-void
.end method
