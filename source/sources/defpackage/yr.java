package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class yr extends ki {
    public String a;

    public yr() {
    }

    public yr(String str) {
        this.a = str;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = a(dataInputStream, 100);
    }

    @Override // defpackage.ki
    public void a(DataOutputStream dataOutputStream) {
        a(this.a, dataOutputStream);
    }

    @Override // defpackage.ki
    public void a(ti tiVar) {
        tiVar.a(this);
    }

    @Override // defpackage.ki
    public int a() {
        return this.a.length();
    }
}
