package defpackage;

import java.net.HttpURLConnection;
import java.net.URL;
import mcshim.imageio.ImageIO;

/* JADX INFO: loaded from: classes.dex */
class tj extends Thread {
    final String a;
    final nf b;
    final ek c;

    tj(ek ekVar, String str, nf nfVar) {
        this.c = ekVar;
        this.a = str;
        this.b = nfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        HttpURLConnection httpURLConnection;
        Throwable th;
        Exception e;
        if (MCPortHooks.skinOverride(this)) {
            return;
        }
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.a).openConnection();
                try {
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    if (httpURLConnection.getResponseCode() / 100 != 4) {
                        nf nfVar = this.b;
                        if (nfVar == null) {
                            this.c.a = ImageIO.read(httpURLConnection.getInputStream());
                        } else {
                            this.c.a = nfVar.a(ImageIO.read(httpURLConnection.getInputStream()));
                        }
                    } else {
                        httpURLConnection.disconnect();
                        return;
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection.disconnect();
                throw th;
            }
        } catch (Exception e3) {
            httpURLConnection = null;
            e = e3;
        } catch (Throwable th3) {
            httpURLConnection = null;
            th = th3;
            httpURLConnection.disconnect();
            throw th;
        }
        httpURLConnection.disconnect();
    }
}
