###### Class com.jcraft.jorbis.PsyInfo (com.jcraft.jorbis.PsyInfo)
.class Lcom/jcraft/jorbis/PsyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ath_att:F

.field athp:I

.field attack_coeff:F

.field decay_coeff:F

.field decayp:I

.field max_curve_dB:F

.field noiseatt_1000Hz:[F

.field noiseatt_125Hz:[F

.field noiseatt_2000Hz:[F

.field noiseatt_250Hz:[F

.field noiseatt_4000Hz:[F

.field noiseatt_500Hz:[F

.field noiseatt_8000Hz:[F

.field noisefit_subblock:I

.field noisefit_threshdB:F

.field noisefitp:I

.field noisemaskp:I

.field peakatt_1000Hz:[F

.field peakatt_125Hz:[F

.field peakatt_2000Hz:[F

.field peakatt_250Hz:[F

.field peakatt_4000Hz:[F

.field peakatt_500Hz:[F

.field peakatt_8000Hz:[F

.field peakattp:I

.field smoothp:I

.field toneatt_1000Hz:[F

.field toneatt_125Hz:[F

.field toneatt_2000Hz:[F

.field toneatt_250Hz:[F

.field toneatt_4000Hz:[F

.field toneatt_500Hz:[F

.field toneatt_8000Hz:[F

.field tonemaskp:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [F

    .line 41
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_125Hz:[F

    new-array v1, v0, [F

    .line 42
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_250Hz:[F

    new-array v1, v0, [F

    .line 43
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_500Hz:[F

    new-array v1, v0, [F

    .line 44
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_1000Hz:[F

    new-array v1, v0, [F

    .line 45
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_2000Hz:[F

    new-array v1, v0, [F

    .line 46
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_4000Hz:[F

    new-array v1, v0, [F

    .line 47
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->toneatt_8000Hz:[F

    new-array v1, v0, [F

    .line 50
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_125Hz:[F

    new-array v1, v0, [F

    .line 51
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_250Hz:[F

    new-array v1, v0, [F

    .line 52
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_500Hz:[F

    new-array v1, v0, [F

    .line 53
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_1000Hz:[F

    new-array v1, v0, [F

    .line 54
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_2000Hz:[F

    new-array v1, v0, [F

    .line 55
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_4000Hz:[F

    new-array v1, v0, [F

    .line 56
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->peakatt_8000Hz:[F

    new-array v1, v0, [F

    .line 59
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_125Hz:[F

    new-array v1, v0, [F

    .line 60
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_250Hz:[F

    new-array v1, v0, [F

    .line 61
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_500Hz:[F

    new-array v1, v0, [F

    .line 62
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_1000Hz:[F

    new-array v1, v0, [F

    .line 63
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_2000Hz:[F

    new-array v1, v0, [F

    .line 64
    iput-object v1, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_4000Hz:[F

    new-array v0, v0, [F

    .line 65
    iput-object v0, p0, Lcom/jcraft/jorbis/PsyInfo;->noiseatt_8000Hz:[F

    return-void
.end method


# virtual methods
.method free()V
    .registers 1

    return-void
.end method
