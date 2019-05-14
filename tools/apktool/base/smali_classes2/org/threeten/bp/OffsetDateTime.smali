.class public final Lorg/threeten/bp/OffsetDateTime;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/OffsetDateTime;",
        ">;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/OffsetDateTime;

.field public static final MIN:Lorg/threeten/bp/OffsetDateTime;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Lorg/threeten/bp/LocalDateTime;

.field private final offset:Lorg/threeten/bp/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MIN:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->MIN:Lorg/threeten/bp/OffsetDateTime;

    .line 109
    sget-object v0, Lorg/threeten/bp/LocalDateTime;->MAX:Lorg/threeten/bp/LocalDateTime;

    sget-object v1, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->atOffset(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->MAX:Lorg/threeten/bp/OffsetDateTime;

    .line 113
    new-instance v0, Lorg/threeten/bp/OffsetDateTime$1;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetDateTime$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 136
    new-instance v0, Lorg/threeten/bp/OffsetDateTime$2;

    invoke-direct {v0}, Lorg/threeten/bp/OffsetDateTime$2;-><init>()V

    sput-object v0, Lorg/threeten/bp/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1

    .line 369
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;-><init>()V

    const-string v0, "dateTime"

    .line 370
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    iput-object p1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    const-string p1, "offset"

    .line 371
    invoke-static {p2, p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    iput-object p1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    .line 313
    instance-of v0, p0, Lorg/threeten/bp/OffsetDateTime;

    if-eqz v0, :cond_0

    .line 314
    check-cast p0, Lorg/threeten/bp/OffsetDateTime;

    return-object p0

    .line 317
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v1

    .line 320
    invoke-static {v1, v0}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 322
    :catch_0
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/Instant;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Instant;

    move-result-object v1

    .line 323
    invoke-static {v1, v0}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 326
    :catch_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static now()Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 175
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/OffsetDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    const-string v0, "clock"

    .line 208
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->instant()Lorg/threeten/bp/Instant;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lorg/threeten/bp/Clock;->getZone()Lorg/threeten/bp/ZoneId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 192
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object p0

    invoke-static {p0}, Lorg/threeten/bp/OffsetDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIIIIILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 269
    invoke-static/range {p0 .. p6}, Lorg/threeten/bp/LocalDateTime;->of(IIIIIII)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    .line 270
    new-instance p1, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {p1, p0, p7}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object p1
.end method

.method public static of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 225
    invoke-static {p0, p1}, Lorg/threeten/bp/LocalDateTime;->of(Lorg/threeten/bp/LocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    .line 226
    new-instance p1, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {p1, p0, p2}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object p1
.end method

.method public static of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 239
    new-instance v0, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;
    .locals 2

    const-string v0, "instant"

    .line 287
    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 288
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneId;->getRules()Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p0}, Lorg/threeten/bp/zone/ZoneRules;->getOffset(Lorg/threeten/bp/Instant;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    .line 291
    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    .line 292
    new-instance v0, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 344
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/OffsetDateTime;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    const-string v0, "formatter"

    .line 358
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lorg/threeten/bp/OffsetDateTime;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/OffsetDateTime;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1814
    invoke-static {p0}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 1815
    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    .line 1816
    invoke-static {v0, p0}, Lorg/threeten/bp/OffsetDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1805
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/OffsetDateTime;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/threeten/bp/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 384
    :cond_0
    new-instance v0, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1796
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 3

    .line 1437
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->NANO_OF_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public atZoneSameInstant(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    .line 1518
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/ZonedDateTime;->ofInstant(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public atZoneSimilarLocal(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    .line 1546
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1, v1}, Lorg/threeten/bp/ZonedDateTime;->ofLocal(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->compareTo(Lorg/threeten/bp/OffsetDateTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/OffsetDateTime;)I
    .locals 4

    .line 1661
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1

    .line 1664
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 1666
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1668
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalDateTime()Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1740
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/OffsetDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1741
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    .line 1742
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v3, p1, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    iget-object p1, p1, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatter"

    .line 1790
    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 3

    .line 512
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 517
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    .line 515
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    return p1

    .line 514
    :pswitch_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field too large for an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .line 697
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 2

    .line 546
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 551
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 549
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 548
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 553
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinute()I
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1754
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 5

    .line 1686
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1687
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    if-nez v4, :cond_0

    .line 1688
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result p1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBefore(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 5

    .line 1703
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 1704
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    if-nez v4, :cond_0

    .line 1705
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEqual(Lorg/threeten/bp/OffsetDateTime;)Z
    .locals 5

    .line 1720
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->getNano()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1

    .line 441
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalUnit;)Z
    .locals 3

    .line 446
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 447
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalUnit;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 449
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalUnit;->isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1229
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 1209
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->subtractFrom(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1316
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusDays(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusHours(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1329
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusHours(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMinutes(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1342
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMonths(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1278
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusMonths(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusNanos(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1368
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusNanos(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusSeconds(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1355
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusWeeks(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1297
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1254
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->plusYears(J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1044
    instance-of v0, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 1047
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 1023
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAmount;->addTo(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1134
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusDays(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1147
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusHours(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1160
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMinutes(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1096
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusMonths(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1186
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusNanos(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1173
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1115
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusWeeks(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1072
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->plusYears(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1393
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1394
    sget-object p1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    return-object p1

    .line 1395
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1396
    sget-object p1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    return-object p1

    .line 1397
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_6

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1399
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1400
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object p1

    return-object p1

    .line 1401
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1402
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    return-object p1

    .line 1403
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 1406
    :cond_5
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporal;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1398
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getOffset()Lorg/threeten/bp/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1

    .line 476
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 477
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 478
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 482
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public toEpochSecond()J
    .locals 2

    .line 1632
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInstant()Lorg/threeten/bp/Instant;
    .locals 2

    .line 1619
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDateTime;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    .line 1571
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .line 1559
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public toLocalTime()Lorg/threeten/bp/LocalTime;
    .locals 1

    .line 1583
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetTime()Lorg/threeten/bp/OffsetTime;
    .locals 2

    .line 1595
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/OffsetTime;->of(Lorg/threeten/bp/LocalTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toZonedDateTime()Lorg/threeten/bp/ZonedDateTime;
    .locals 2

    .line 1610
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->of(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->truncatedTo(Lorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 1

    .line 1493
    invoke-static {p1}, Lorg/threeten/bp/OffsetDateTime;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    .line 1494
    instance-of v0, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/OffsetDateTime;->withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    .line 1496
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    iget-object p1, p1, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDateTime;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    .line 1498
    :cond_0
    invoke-interface {p2, p0, p1}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 784
    instance-of v0, p1, Lorg/threeten/bp/LocalDate;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/threeten/bp/LocalTime;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/threeten/bp/LocalDateTime;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/Instant;

    if-eqz v0, :cond_1

    .line 787
    check-cast p1, Lorg/threeten/bp/Instant;

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, v0}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 788
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 790
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/OffsetDateTime;

    if-eqz v0, :cond_3

    .line 791
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1

    .line 793
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalAdjuster;->adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1

    .line 785
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetDateTime;
    .locals 3

    .line 841
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 842
    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 843
    sget-object v1, Lorg/threeten/bp/OffsetDateTime$3;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 849
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 846
    :pswitch_0
    iget-object p1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p2

    invoke-static {p2}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 844
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->getNano()I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, p3, v0, v1}, Lorg/threeten/bp/Instant;->ofEpochSecond(JJ)Lorg/threeten/bp/Instant;

    move-result-object p1

    iget-object p2, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p1, p2}, Lorg/threeten/bp/OffsetDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 851
    :cond_0
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withDayOfYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 929
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withHour(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 944
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMinute(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 882
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withMonth(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 974
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withNano(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withOffsetSameInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 4

    .line 609
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 612
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 613
    iget-object v1, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    .line 614
    new-instance v1, Lorg/threeten/bp/OffsetDateTime;

    invoke-direct {v1, v0, p1}, Lorg/threeten/bp/OffsetDateTime;-><init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)V

    return-object v1
.end method

.method public withOffsetSameLocal(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 959
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withSecond(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->withYear(I)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/OffsetDateTime;->with(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->dateTime:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1810
    iget-object v0, p0, Lorg/threeten/bp/OffsetDateTime;->offset:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
