.class public Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "CursorMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/CursorMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Ljava/lang/Object;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private checkColumns:Z

.field private final columnIndex:I

.field private final columnNameMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cursorDataRetriever:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "*>;"
        }
    .end annotation
.end field

.field private final valueMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "*>;",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Landroid/database/Cursor;

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 4
    iput p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    .line 5
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 6
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->cursorDataRetriever:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method

.method synthetic constructor <init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;)V

    return-void
.end method

.method private constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "*>;",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Landroid/database/Cursor;

    .line 10
    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    .line 12
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    .line 13
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 14
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    iput-object p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->cursorDataRetriever:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 p1, -0x3

    .line 15
    iput p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 3

    const-string v0, "an instance of android.database.Cursor and Rows with column: "

    .line 1
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 2
    iget v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    :goto_0
    const-string v0, " "

    .line 6
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->cursorDataRetriever:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 7
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " matching "

    .line 8
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    .line 9
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    return-void
.end method

.method public matchesSafely(Landroid/database/Cursor;)Z
    .locals 6

    .line 1
    iget v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnIndex:I

    .line 2
    new-instance v1, Lorg/hamcrest/StringDescription;

    invoke-direct {v1}, Lorg/hamcrest/StringDescription;-><init>()V

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->access$000(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    const-string v0, "Multiple columns in "

    .line 8
    invoke-virtual {v1, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " match "

    .line 10
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    .line 11
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    goto :goto_0

    :cond_0
    const-string v0, "Couldn\'t find column in "

    .line 13
    invoke-virtual {v1, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object p1

    const-string v0, " matching "

    .line 15
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->columnNameMatcher:Lorg/hamcrest/Matcher;

    .line 16
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 17
    :goto_0
    iget-boolean p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    if-nez p1, :cond_1

    return v2

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->cursorDataRetriever:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    invoke-interface {v3, p1, v0}, Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;->getData(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p1

    .line 21
    iget-object v3, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v4, "value at column "

    .line 24
    invoke-virtual {v1, v4}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v4

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object v4

    const-string v5, " "

    .line 26
    invoke-interface {v4, v5}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 27
    iget-object v4, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->valueMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v4, p1, v1}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v3

    :catch_0
    move-exception p1

    const-string v3, "Column index "

    .line 31
    invoke-virtual {v1, v3}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v3

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v3, " is invalid"

    .line 33
    invoke-interface {v0, v3}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 34
    iget-boolean v0, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    if-nez v0, :cond_4

    return v2

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->matchesSafely(Landroid/database/Cursor;)Z

    move-result p1

    return p1
.end method

.method public withStrictColumnChecks(Z)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;->checkColumns:Z

    return-object p0
.end method
