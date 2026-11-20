package mcshim.awt;

/* JADX INFO: loaded from: classes.dex */
public abstract class FontMetrics {
    protected FontMetrics() {
    }

    public int stringWidth(String str) {
        return str.length() * 6;
    }
}
