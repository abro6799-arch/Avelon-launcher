package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class vb implements Comparable {
    private final String a;
    private final String b;
    private final long c;
    private final long d;
    private final boolean e;

    public vb(String str, String str2, long j, long j2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = z;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public long c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    public long e() {
        return this.c;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(vb vbVar) {
        long j = this.c;
        long j2 = vbVar.c;
        if (j < j2) {
            return 1;
        }
        if (j > j2) {
            return -1;
        }
        return this.a.compareTo(vbVar.a);
    }
}
