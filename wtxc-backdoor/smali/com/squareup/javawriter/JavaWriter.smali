.class public final Lcom/squareup/javawriter/JavaWriter;
.super Ljava/lang/Object;
.source "JavaWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javawriter/JavaWriter$Scope;
    }
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/io/Writer;

.field private packagePrefix:Ljava/lang/String;

.field private final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:[\\w$]+\\.)*([\\w\\.*$]+)"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private checkInMethod()V
    .locals 2

    .line 794
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->peekScope()Lcom/squareup/javawriter/JavaWriter$Scope;

    move-result-object v0

    .line 795
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 572
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    const-string v4, "\n"

    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    .line 577
    :cond_0
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, ",\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 579
    :goto_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 580
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_1
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 583
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 585
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method private emitModifiers(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    instance-of v0, p1, Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 738
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 740
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 741
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private hangingIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 789
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 783
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAmbiguous(Ljava/lang/String;)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isClassInPackage(Ljava/lang/String;)Z
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    .line 181
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 182
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[A-Z]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static modifiersAsSet(I)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    .line 750
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 752
    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 755
    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 758
    sget-object v1, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 761
    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 764
    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_5

    .line 767
    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 770
    sget-object v1, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 773
    sget-object v1, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    .line 776
    sget-object p0, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method private peekScope()Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method

.method private popScope()Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method

.method private popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 815
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static stringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    .line 674
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 675
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    if-eq v4, v1, :cond_2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 699
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 700
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 702
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, "\\n"

    .line 690
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, "\\t"

    .line 687
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v4, "\\b"

    .line 684
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\\\"

    .line 681
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\\""

    .line 678
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "\\r"

    .line 696
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "\\f"

    .line 693
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 712
    array-length v0, p1

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 715
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    .line 720
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 721
    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 722
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    const-string v1, ", "

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ">"

    .line 726
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 716
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public beginControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 616
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 617
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 619
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public beginInitializer(Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    :goto_0
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 388
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    const-string v0, " "

    if-eqz p1, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 391
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 396
    :goto_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, ", "

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    move v1, p2

    .line 398
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 400
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 402
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 403
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    .line 404
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 407
    :cond_2
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 408
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 409
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 411
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "    throws "

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_4

    if-eqz p2, :cond_3

    .line 414
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    :cond_3
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 419
    :cond_4
    sget-object p1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 420
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 421
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    goto :goto_3

    .line 423
    :cond_5
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    :goto_3
    return-object p0
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;I)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    const/4 p3, 0x0

    new-array v5, p3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 247
    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 268
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 269
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 270
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p4, :cond_0

    .line 273
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " extends "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 276
    :cond_0
    array-length p1, p5

    if-lez p1, :cond_2

    .line 277
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 279
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "    implements "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 280
    :goto_0
    array-length p2, p5

    if-ge p1, p2, :cond_2

    if-eqz p1, :cond_1

    .line 282
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 284
    :cond_1
    aget-object p2, p5, p1

    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public compressType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 141
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 144
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 148
    :goto_1
    invoke-virtual {v0, p1, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 159
    :cond_2
    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-direct {p0, v4}, Lcom/squareup/javawriter/JavaWriter;->isAmbiguous(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v4, "java.lang."

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xa

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0

    .line 138
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 474
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 486
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 510
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 498
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 500
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 502
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 523
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 525
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    const-string v0, "\n"

    if-eqz p1, :cond_4

    const-string v1, ")"

    const-string v2, "("

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 530
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 532
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 533
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 537
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 538
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 540
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 543
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v3, v2

    goto :goto_2

    .line 545
    :cond_2
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ",\n"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    :goto_2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 548
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 550
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 551
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 553
    :cond_3
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 554
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 556
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 559
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 462
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;I)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 331
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 333
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 337
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public varargs emitImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 434
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "/**\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 436
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 437
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 442
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " */\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 59
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public varargs emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 449
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 598
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 600
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 601
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 604
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import static "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public varargs emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public endControlFlow()Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->endControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public endControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 647
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public endInitializer()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 218
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 219
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public endMethod()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->popScope()Lcom/squareup/javawriter/JavaWriter$Scope;

    move-result-object v0

    .line 661
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 663
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_1

    :goto_0
    return-object p0

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endType()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 295
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 296
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public nextControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 629
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 630
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 631
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 633
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
