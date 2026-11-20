package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import mcshim.awt.BorderLayout;
import mcshim.awt.Color;
import mcshim.awt.Font;
import mcshim.awt.Panel;
import mcshim.awt.TextArea;
import org.lwjgl.Sys;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class cb extends Panel {
    public cb(mh mhVar) {
        String str;
        String str2;
        String str3;
        setBackground(new Color(3028036));
        setLayout(new BorderLayout());
        StringWriter stringWriter = new StringWriter();
        mhVar.b.printStackTrace(new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        String strGlGetString = "";
        try {
            String str4 = "Generated " + new SimpleDateFormat().format(new Date()) + "\n";
            try {
                str4 = (((str4 + "\n") + "Minecraft: Minecraft Beta 1.7.3\n") + "OS: " + System.getProperty("os.name") + " (" + System.getProperty("os.arch") + ") version " + System.getProperty("os.version") + "\n") + "Java: " + System.getProperty("java.version") + ", " + System.getProperty("java.vendor") + "\n";
                String str5 = str4 + "VM: " + System.getProperty("java.vm.name") + " (" + System.getProperty("java.vm.info") + "), " + System.getProperty("java.vm.vendor") + "\n";
                try {
                    str5 = str5 + "LWJGL: " + Sys.getVersion() + "\n";
                    strGlGetString = GL11.glGetString(7936);
                    str2 = str5 + "OpenGL: " + GL11.glGetString(7937) + " version " + GL11.glGetString(7938) + ", " + GL11.glGetString(7936) + "\n";
                } catch (Throwable th) {
                    th = th;
                    String str6 = strGlGetString;
                    strGlGetString = str5;
                    str = str6;
                    str2 = strGlGetString + "[failed to get system properties (" + th + ")]\n";
                    strGlGetString = str;
                }
            } catch (Throwable th2) {
                th = th2;
                str = "";
                strGlGetString = str4;
            }
        } catch (Throwable th3) {
            th = th3;
            str = "";
        }
        String str7 = (str2 + "\n") + string;
        if (string.contains("Pixel format not accelerated")) {
            str3 = ((("\n\n      Bad video card drivers!      \n      -----------------------      \n") + "\n") + "Minecraft was unable to start because it failed to find an accelerated OpenGL mode.\n") + "This can usually be fixed by updating the video card drivers.\n";
            if (strGlGetString.toLowerCase().contains("nvidia")) {
                str3 = ((str3 + "\n") + "You might be able to find drivers for your video card here:\n") + "  http://www.nvidia.com/\n";
            } else if (strGlGetString.toLowerCase().contains("ati")) {
                str3 = ((str3 + "\n") + "You might be able to find drivers for your video card here:\n") + "  http://www.amd.com/\n";
            }
        } else {
            str3 = ((((("\n\n      Minecraft has crashed!      \n      ----------------------      \n") + "\n") + "Minecraft has stopped running because it encountered a problem.\n") + "\n") + "If you wish to report this, please copy this entire text and email it to support@mojang.com.\n") + "Please include a description of what you did when the error occured.\n";
        }
        String str8 = ((str3 + "\n") + "\n") + "\n";
        String str9 = (str8 + "--- BEGIN ERROR REPORT " + Integer.toHexString(str8.hashCode()) + " --------\n") + str7;
        TextArea textArea = new TextArea(((str9 + "--- END ERROR REPORT " + Integer.toHexString(str9.hashCode()) + " ----------\n") + "\n") + "\n", 0, 0, 1);
        textArea.setFont(new Font("Monospaced", 0, 12));
        add(new fy(), BorderLayout.NORTH);
        add(new wv(80), BorderLayout.EAST);
        add(new wv(80), BorderLayout.WEST);
        add(new wv(100), BorderLayout.SOUTH);
        add(textArea, BorderLayout.CENTER);
    }
}
