.class public Lcom/kunminx/architecture/ui/callback/UnPeekLiveData$Builder;
.super Ljava/lang/Object;
.source "UnPeekLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunminx/architecture/ui/callback/UnPeekLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isAllowNullValue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/kunminx/architecture/ui/callback/UnPeekLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kunminx/architecture/ui/callback/UnPeekLiveData<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/kunminx/architecture/ui/callback/UnPeekLiveData;

    invoke-direct {v0}, Lcom/kunminx/architecture/ui/callback/UnPeekLiveData;-><init>()V

    .line 51
    iget-boolean v1, p0, Lcom/kunminx/architecture/ui/callback/UnPeekLiveData$Builder;->isAllowNullValue:Z

    iput-boolean v1, v0, Lcom/kunminx/architecture/ui/callback/UnPeekLiveData;->isAllowNullValue:Z

    return-object v0
.end method

.method public setAllowNullValue(Z)Lcom/kunminx/architecture/ui/callback/UnPeekLiveData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/kunminx/architecture/ui/callback/UnPeekLiveData$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 45
    iput-boolean p1, p0, Lcom/kunminx/architecture/ui/callback/UnPeekLiveData$Builder;->isAllowNullValue:Z

    return-object p0
.end method
