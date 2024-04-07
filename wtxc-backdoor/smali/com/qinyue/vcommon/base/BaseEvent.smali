.class public Lcom/qinyue/vcommon/base/BaseEvent;
.super Lcom/kunminx/architecture/domain/event/Event;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qinyue/vcommon/base/BaseParms;",
        "P:",
        "Lcom/qinyue/vcommon/base/BaseResult;",
        ">",
        "Lcom/kunminx/architecture/domain/event/Event<",
        "TT;TP;>;"
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/kunminx/architecture/domain/event/Event;-><init>()V

    return-void
.end method
