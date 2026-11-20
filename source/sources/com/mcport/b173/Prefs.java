package com.mcport.b173;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Prefs {
    public static final String FILE = "mcport";
    final SharedPreferences sp;

    public Prefs(Context context) {
        this.sp = context.getSharedPreferences(FILE, 0);
    }

    public static File dataDir(Context context) {
        File file = new File(context.getFilesDir(), ".minecraft");
        file.mkdirs();
        return file;
    }

    public static File skinsDir(Context context) {
        File file = new File(context.getFilesDir(), "skins");
        file.mkdirs();
        return file;
    }

    public static File packsDir(Context context) {
        File file = new File(dataDir(context), "texturepacks");
        file.mkdirs();
        return file;
    }

    public String username() {
        return this.sp.getString("username", "Player");
    }

    public String skin() {
        return this.sp.getString("skin", "");
    }

    public boolean skipLauncher() {
        return this.sp.getBoolean("skipLauncher", true);
    }

    public float controlScale() {
        return this.sp.getFloat("ctlScale", 0.85f);
    }

    public float controlOpacity() {
        return this.sp.getFloat("ctlOpacity", 0.55f);
    }

    public float lookSensitivity() {
        return this.sp.getFloat("lookSens", 1.0f);
    }

    public boolean tapToUse() {
        return this.sp.getBoolean("tapToUse", true);
    }

    public boolean showAttackUse() {
        return this.sp.getBoolean("showAttackUse", true);
    }

    public boolean controllerLayout() {
        return this.sp.getBoolean("controllerLayout", false);
    }

    public boolean hideTouchWithController() {
        return this.sp.getBoolean("hideTouchCtl", true);
    }

    public float renderScale() {
        return this.sp.getFloat("renderScale", 0.8f);
    }

    public boolean vsync() {
        return this.sp.getBoolean("vsync", true);
    }

    public float controllerLookSpeed() {
        return this.sp.getFloat("padLook", 1.0f);
    }

    public float[] pos(String str, float f, float f2) {
        return new float[]{this.sp.getFloat("pos_" + str + "_x", f), this.sp.getFloat("pos_" + str + "_y", f2)};
    }

    public void setPos(String str, float f, float f2) {
        this.sp.edit().putFloat("pos_" + str + "_x", f).putFloat("pos_" + str + "_y", f2).apply();
    }

    public void resetLayout() {
        SharedPreferences.Editor editorEdit = this.sp.edit();
        for (String str : this.sp.getAll().keySet()) {
            if (str.startsWith("pos_")) {
                editorEdit.remove(str);
            }
        }
        editorEdit.apply();
    }

    public static final class Server {
        public String host;
        public String name;
        public int port;

        public Server(String str, String str2, int i) {
            this.name = str;
            this.host = str2;
            this.port = i;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.name);
            sb.append("  (");
            sb.append(this.host);
            if (this.port == 25565) {
                str = "";
            } else {
                str = ":" + this.port;
            }
            sb.append(str);
            sb.append(")");
            return sb.toString();
        }
    }

    public List<Server> servers() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(this.sp.getString("servers", "[]"));
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                arrayList.add(new Server(jSONObject.getString("name"), jSONObject.getString("host"), jSONObject.optInt("port", 25565)));
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public void setServers(List<Server> list) {
        JSONArray jSONArray = new JSONArray();
        try {
            for (Server server : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("name", server.name);
                jSONObject.put("host", server.host);
                jSONObject.put("port", server.port);
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        this.sp.edit().putString("servers", jSONArray.toString()).apply();
    }

    public static Object[] parseAddress(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        int port = 25565;
        if (strTrim.startsWith("[")) {
            int iIndexOf = strTrim.indexOf(93);
            if (iIndexOf < 0) {
                return null;
            }
            String strSubstring = strTrim.substring(1, iIndexOf);
            int i = iIndexOf + 1;
            if (i < strTrim.length() && strTrim.charAt(i) == ':') {
                port = parsePort(strTrim.substring(iIndexOf + 2));
            }
            strTrim = strSubstring;
        } else {
            int iLastIndexOf = strTrim.lastIndexOf(58);
            if (iLastIndexOf > 0 && strTrim.indexOf(58) == iLastIndexOf) {
                String strSubstring2 = strTrim.substring(0, iLastIndexOf);
                port = parsePort(strTrim.substring(iLastIndexOf + 1));
                strTrim = strSubstring2;
            }
        }
        if (port <= 0 || port > 65535 || strTrim.isEmpty() || strTrim.contains(" ")) {
            return null;
        }
        return new Object[]{strTrim, Integer.valueOf(port)};
    }

    private static int parsePort(String str) {
        try {
            return Integer.parseInt(str.trim());
        } catch (Exception unused) {
            return -1;
        }
    }
}
