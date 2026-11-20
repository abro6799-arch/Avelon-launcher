package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class kh implements gt {
    final /* synthetic */ Minecraft a;

    public kh(Minecraft minecraft) {
        this.a = minecraft;
    }

    @Override // defpackage.gt
    public String a(String str) {
        return String.format(str, Keyboard.getKeyName(this.a.z.r.b));
    }
}
