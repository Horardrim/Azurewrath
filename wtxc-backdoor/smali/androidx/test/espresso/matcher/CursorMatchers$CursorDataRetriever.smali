.class interface abstract Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
.super Ljava/lang/Object;
.source "CursorMatchers.java"

# interfaces
.implements Lorg/hamcrest/SelfDescribing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/CursorMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CursorDataRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/hamcrest/SelfDescribing;"
    }
.end annotation


# virtual methods
.method public abstract getData(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method
