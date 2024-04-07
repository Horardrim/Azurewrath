.class public abstract Lcom/qinyue/vcommon/listener/OnMultiClickListener;
.super Ljava/lang/Object;
.source "OnMultiClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_CLICK_TIME:I = 0x1f4

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    sget-wide v2, Lcom/qinyue/vcommon/listener/OnMultiClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 22
    sput-wide v0, Lcom/qinyue/vcommon/listener/OnMultiClickListener;->lastClickTime:J

    .line 23
    invoke-virtual {p0, p1}, Lcom/qinyue/vcommon/listener/OnMultiClickListener;->onMultiClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onMultiClick(Landroid/view/View;)V
.end method
