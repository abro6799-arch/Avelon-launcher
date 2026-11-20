package defpackage;

import java.io.IOException;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class pa extends i {
    private int e = -1;
    private BufferedImage f;

    public pa() {
        this.a = "Default";
        this.b = "The default look of Minecraft";
        try {
            this.f = ImageIO.read(pa.class.getResource("/pack.png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.i
    public void b(Minecraft minecraft) {
        if (this.f != null) {
            minecraft.p.a(this.e);
        }
    }

    @Override // defpackage.i
    public void c(Minecraft minecraft) {
        if (this.f != null && this.e < 0) {
            this.e = minecraft.p.a(this.f);
        }
        if (this.f != null) {
            minecraft.p.b(this.e);
        } else {
            GL11.glBindTexture(3553, minecraft.p.b("/gui/unknown_pack.png"));
        }
    }
}
