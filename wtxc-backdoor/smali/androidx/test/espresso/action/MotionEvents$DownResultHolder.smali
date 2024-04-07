.class public Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
.super Ljava/lang/Object;
.source "MotionEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/MotionEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownResultHolder"
.end annotation


# instance fields
.field public final down:Landroid/view/MotionEvent;

.field public final longPress:Z


# direct methods
.method constructor <init>(Landroid/view/MotionEvent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    .line 3
    iput-boolean p2, p0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->longPress:Z

    return-void
.end method
