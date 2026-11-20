package defpackage;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class vr {
    private final wk a;
    public final int e;
    public final String f;
    public boolean g;
    public String h;
    private static NumberFormat b = NumberFormat.getIntegerInstance(Locale.US);
    public static wk i = new bq();
    private static DecimalFormat c = new DecimalFormat("########0.00");
    public static wk j = new bo();
    public static wk k = new bn();

    public boolean d() {
        return false;
    }

    public vr(int i2, String str, wk wkVar) {
        this.g = false;
        this.e = i2;
        this.f = str;
        this.a = wkVar;
    }

    public vr(int i2, String str) {
        this(i2, str, i);
    }

    public vr h() {
        this.g = true;
        return this;
    }

    public vr g() {
        if (jl.a.containsKey(Integer.valueOf(this.e))) {
            throw new RuntimeException("Duplicate stat id: \"" + ((vr) jl.a.get(Integer.valueOf(this.e))).f + "\" and \"" + this.f + "\" at id " + this.e);
        }
        jl.b.add(this);
        jl.a.put(Integer.valueOf(this.e), this);
        this.h = b.a(this.e);
        return this;
    }

    public String a(int i2) {
        return this.a.a(i2);
    }

    public String toString() {
        return this.f;
    }
}
