package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class pe extends ki {
    public String a;

    public pe() {
    }

    public pe(String str) {
        this.a = str.length() > 119 ? str.substring(0, 119) : str;
    }

    @Override // defpackage.ki
    public void a(DataInputStream dataInputStream) {
        this.a = a(dataInputStream, 119);
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
