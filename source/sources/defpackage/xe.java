package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class xe extends Exception {
    private final int a;
    private final int b;

    xe(String str, et etVar) {
        super("At line " + etVar.b() + ", column " + etVar.a() + ":  " + str);
        this.a = etVar.a();
        this.b = etVar.b();
    }

    xe(String str, Throwable th, et etVar) {
        super("At line " + etVar.b() + ", column " + etVar.a() + ":  " + str, th);
        this.a = etVar.a();
        this.b = etVar.b();
    }
}
