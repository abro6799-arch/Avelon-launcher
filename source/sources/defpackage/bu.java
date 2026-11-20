package defpackage;

/* JADX INFO: loaded from: classes.dex */
public enum bu {
    WOOD(0, 59, 2.0f, 0),
    STONE(1, 131, 4.0f, 1),
    IRON(2, 250, 6.0f, 2),
    EMERALD(3, 1561, 8.0f, 3),
    GOLD(0, 32, 12.0f, 0);

    private final int f;
    private final int g;
    private final float h;
    private final int i;

    bu(int i, int i2, float f, int i3) {
        this.f = i;
        this.g = i2;
        this.h = f;
        this.i = i3;
    }

    public int a() {
        return this.g;
    }

    public float b() {
        return this.h;
    }

    public int c() {
        return this.i;
    }

    public int d() {
        return this.f;
    }
}
