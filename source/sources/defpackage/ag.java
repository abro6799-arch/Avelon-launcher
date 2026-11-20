package defpackage;

import java.util.HashMap;
import java.util.Map;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ag extends je {
    private Map b = new HashMap();

    @Override // defpackage.je
    public void a(cy cyVar, double d, double d2, double d3, float f) {
        GL11.glPushMatrix();
        GL11.glTranslatef(((float) d) + 0.5f, (float) d2, ((float) d3) + 0.5f);
        sn snVarA = (sn) this.b.get(cyVar.a());
        if (snVarA == null) {
            snVarA = jc.a(cyVar.a(), (fd) null);
            this.b.put(cyVar.a(), snVarA);
        }
        sn snVar = snVarA;
        if (snVar != null) {
            snVar.a(cyVar.d);
            GL11.glTranslatef(0.0f, 0.4f, 0.0f);
            GL11.glRotatef(((float) (cyVar.c + ((cyVar.b - cyVar.c) * ((double) f)))) * 10.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(-30.0f, 1.0f, 0.0f, 0.0f);
            GL11.glTranslatef(0.0f, -0.4f, 0.0f);
            GL11.glScalef(0.4375f, 0.4375f, 0.4375f);
            snVar.c(d, d2, d3, 0.0f, 0.0f);
            th.a.a(snVar, 0.0d, 0.0d, 0.0d, 0.0f, f);
        }
        GL11.glPopMatrix();
    }
}
