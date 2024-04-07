.class public final Landroidx/test/espresso/action/OpenLinkAction;
.super Ljava/lang/Object;
.source "OpenLinkAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# instance fields
.field private final linkTextMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uriMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/action/OpenLinkAction;->linkTextMatcher:Lorg/hamcrest/Matcher;

    .line 3
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/action/OpenLinkAction;->uriMatcher:Lorg/hamcrest/Matcher;

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->hasLinks()Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/action/OpenLinkAction;->linkTextMatcher:Lorg/hamcrest/Matcher;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/test/espresso/action/OpenLinkAction;->uriMatcher:Lorg/hamcrest/Matcher;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "open link with text %s and uri %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v2}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    .line 5
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 6
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v10, v4, v8

    .line 7
    invoke-interface {v2, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v7

    .line 8
    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x31

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Unable to get start of text associated with url: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 9
    invoke-interface {v2, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    move v12, v7

    .line 10
    :goto_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2f

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Unable to get end of text associated with url: "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v11, v0, Landroidx/test/espresso/action/OpenLinkAction;->linkTextMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v11, v9}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroidx/test/espresso/action/OpenLinkAction;->uriMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 14
    invoke-virtual {v10, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 16
    :cond_3
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/action/OpenLinkAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 18
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v0, Landroidx/test/espresso/action/OpenLinkAction;->linkTextMatcher:Lorg/hamcrest/Matcher;

    aput-object v8, v6, v7

    iget-object v7, v0, Landroidx/test/espresso/action/OpenLinkAction;->uriMatcher:Lorg/hamcrest/Matcher;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v5, 0x3

    .line 19
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "Link with text \'%s\' and uri \'%s\' not found. List of links found in this view: %s\nList of uris: %s"

    .line 20
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v1

    throw v1
.end method
