package defpackage;

import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class mx extends fm {
    public mx(File file, String str, boolean z) {
        super(file, str, z);
    }

    @Override // defpackage.fm, defpackage.wt
    public bf a(xa xaVar) {
        File fileA = a();
        if (xaVar instanceof wd) {
            File file = new File(fileA, "DIM-1");
            file.mkdirs();
            return new ld(file);
        }
        return new ld(fileA);
    }

    @Override // defpackage.fm, defpackage.wt
    public void a(ei eiVar, List list) {
        eiVar.d(19132);
        super.a(eiVar, list);
    }
}
