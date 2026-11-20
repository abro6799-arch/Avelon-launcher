package defpackage;

/* JADX INFO: loaded from: classes.dex */
public enum ht {
    MUSIC("options.music", true, false),
    SOUND("options.sound", true, false),
    INVERT_MOUSE("options.invertMouse", false, true),
    SENSITIVITY("options.sensitivity", true, false),
    RENDER_DISTANCE("options.renderDistance", false, false),
    VIEW_BOBBING("options.viewBobbing", false, true),
    ANAGLYPH("options.anaglyph", false, true),
    ADVANCED_OPENGL("options.advancedOpengl", false, true),
    FRAMERATE_LIMIT("options.framerateLimit", false, false),
    DIFFICULTY("options.difficulty", false, false),
    GRAPHICS("options.graphics", false, false),
    AMBIENT_OCCLUSION("options.ao", false, true),
    GUI_SCALE("options.guiScale", false, false);

    private final boolean n;
    private final boolean o;
    private final String p;

    public static ht a(int i) {
        for (ht htVar : values()) {
            if (htVar.c() == i) {
                return htVar;
            }
        }
        return null;
    }

    ht(String str, boolean z, boolean z2) {
        this.p = str;
        this.n = z;
        this.o = z2;
    }

    public boolean a() {
        return this.n;
    }

    public boolean b() {
        return this.o;
    }

    public int c() {
        return ordinal();
    }

    public String d() {
        return this.p;
    }
}
