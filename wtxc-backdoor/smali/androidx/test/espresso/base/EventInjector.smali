.class final Landroidx/test/espresso/base/EventInjector;
.super Ljava/lang/Object;
.source "EventInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventInjector"


# instance fields
.field private final injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/base/EventInjectionStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/EventInjectionStrategy;

    iput-object p1, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    return-void
.end method


# virtual methods
.method injectKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_0
    move-wide v7, v2

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    move-wide v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v0

    .line 13
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    .line 14
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v15, v4, 0x8

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    .line 16
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v15, v4, 0x8

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    :goto_1
    move-object/from16 v1, p0

    .line 17
    iget-object v2, v1, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    invoke-interface {v2, v0}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method injectMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method injectMotionEventAsync(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/test/espresso/base/EventInjector;->injectionStrategy:Landroidx/test/espresso/base/EventInjectionStrategy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/base/EventInjectionStrategy;->injectMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method
