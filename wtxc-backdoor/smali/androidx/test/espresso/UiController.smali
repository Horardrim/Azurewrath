.class public interface abstract Landroidx/test/espresso/UiController;
.super Ljava/lang/Object;
.source "UiController.java"


# virtual methods
.method public abstract injectKeyEvent(Landroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectMotionEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectMotionEventSequence(Ljava/lang/Iterable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/MotionEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectString(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract loopMainThreadForAtLeast(J)V
.end method

.method public abstract loopMainThreadUntilIdle()V
.end method
