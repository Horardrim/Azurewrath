.class interface abstract Landroidx/test/espresso/base/EventInjectionStrategy;
.super Ljava/lang/Object;
.source "EventInjectionStrategy.java"


# virtual methods
.method public abstract injectKeyEvent(Landroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectMotionEvent(Landroid/view/MotionEvent;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method
