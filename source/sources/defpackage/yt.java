package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class yt {
    private final String a;

    yt(String str) {
        this.a = str.replace("\\", "\\\\").replace("\"", "\\\"").replace("\b", "\\b").replace("\f", "\\f").replace("\n", "\\n").replace("\r", "\\r").replace("\t", "\\t");
    }

    public String toString() {
        return this.a;
    }
}
