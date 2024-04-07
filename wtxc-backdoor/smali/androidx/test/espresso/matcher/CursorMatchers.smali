.class public final Landroidx/test/espresso/matcher/CursorMatchers;
.super Ljava/lang/Object;
.source "CursorMatchers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;,
        Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    }
.end annotation


# static fields
.field private static final BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final COLUMN_NOT_FOUND:I = -0x1

.field private static final DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final MULTIPLE_COLUMNS_FOUND:I = -0x2

.field private static final SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_COLUMN_PICKER:I = -0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$1;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$2;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 3
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$3;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$3;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 4
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$4;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$4;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$5;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$5;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 6
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$6;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$6;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    .line 7
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$7;

    invoke-direct {v0}, Landroidx/test/espresso/matcher/CursorMatchers$7;-><init>()V

    sput-object v0, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->findColumnIndex(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I

    move-result p0

    return p0
.end method

.method private static findColumnIndex(Lorg/hamcrest/Matcher;Landroid/database/Cursor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/Cursor;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v3, p1, v1

    .line 5
    invoke-interface {p0, v3}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v2, v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v2, -0x2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method public static withRowBlob(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowBlob(I[B)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Ljava/lang/String;[B)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowBlob(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "[B>;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->BLOB_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowDouble(ID)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowDouble(Ljava/lang/String;D)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowDouble(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowDouble(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->DOUBLE_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowFloat(IF)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowFloat(Ljava/lang/String;F)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowFloat(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowFloat(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->FLOAT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowInt(II)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowInt(Ljava/lang/String;I)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowInt(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowInt(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->INT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowLong(IJ)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowLong(Ljava/lang/String;J)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowLong(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowLong(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->LONG_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowShort(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowShort(IS)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Ljava/lang/String;S)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowShort(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowShort(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Short;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->SHORT_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowString(ILjava/lang/String;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(ILorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(ILorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method

.method public static withRowString(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0

    .line 3
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p1}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(Ljava/lang/String;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/hamcrest/Matchers;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/test/espresso/matcher/CursorMatchers;->withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static withRowString(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;"
        }
    .end annotation

    .line 5
    new-instance v0, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;

    sget-object v1, Landroidx/test/espresso/matcher/CursorMatchers;->STRING_MATCHER_APPLIER:Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/test/espresso/matcher/CursorMatchers$CursorMatcher;-><init>(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Landroidx/test/espresso/matcher/CursorMatchers$CursorDataRetriever;Landroidx/test/espresso/matcher/CursorMatchers$1;)V

    return-object v0
.end method
