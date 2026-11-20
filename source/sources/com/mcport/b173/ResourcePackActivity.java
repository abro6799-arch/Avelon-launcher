package com.mcport.b173;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class ResourcePackActivity extends Activity {
    private static final int REQ = 21;
    private ArrayAdapter<String> adapter;
    private float dp;
    private boolean fromGame;
    private List<String> items = new ArrayList();
    private ListView list;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.dp = getResources().getDisplayMetrics().density;
        this.fromGame = getIntent().getBooleanExtra("fromGame", false);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i = (int) (this.dp * 16.0f);
        linearLayout.setPadding(i, i, i, i);
        TextView textView = new TextView(this);
        textView.setText("Resource packs");
        textView.setTextSize(22.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText(this.fromGame ? "Import packs here, then press Back: they appear in the game's texture pack list, where you select them." : "Tap a pack to select it (applies the next time the game starts). Supported: Beta-era 16x .zip texture packs.");
        linearLayout.addView(textView2);
        ListView listView = new ListView(this);
        this.list = listView;
        listView.setChoiceMode(1);
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_single_choice, this.items);
        this.adapter = arrayAdapter;
        this.list.setAdapter((ListAdapter) arrayAdapter);
        this.list.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                this.f$0.m24lambda$onCreate$0$commcportb173ResourcePackActivity(adapterView, view, i2, j);
            }
        });
        this.list.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public final boolean onItemLongClick(AdapterView adapterView, View view, int i2, long j) {
                return this.f$0.m25lambda$onCreate$1$commcportb173ResourcePackActivity(adapterView, view, i2, j);
            }
        });
        linearLayout.addView(this.list, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout linearLayout2 = new LinearLayout(this);
        Button button = new Button(this);
        button.setText("Import .zip...");
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m26lambda$onCreate$2$commcportb173ResourcePackActivity(view);
            }
        });
        Button button2 = new Button(this);
        button2.setText("Delete selected");
        button2.setAllCaps(false);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m27lambda$onCreate$3$commcportb173ResourcePackActivity(view);
            }
        });
        Button button3 = new Button(this);
        button3.setText(this.fromGame ? "Back to game" : "Done");
        button3.setAllCaps(false);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m28lambda$onCreate$4$commcportb173ResourcePackActivity(view);
            }
        });
        linearLayout2.addView(button, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(button2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(button3, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(linearLayout2);
        setContentView(linearLayout);
        refresh();
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ void m24lambda$onCreate$0$commcportb173ResourcePackActivity(AdapterView adapterView, View view, int i, long j) {
        select(i);
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ boolean m25lambda$onCreate$1$commcportb173ResourcePackActivity(AdapterView adapterView, View view, int i, long j) {
        if (i <= 0) {
            return true;
        }
        confirmDelete(this.items.get(i));
        return true;
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ void m26lambda$onCreate$2$commcportb173ResourcePackActivity(View view) {
        pick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$3$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ void m27lambda$onCreate$3$commcportb173ResourcePackActivity(View view) {
        int checkedItemPosition = this.list.getCheckedItemPosition();
        if (checkedItemPosition > 0) {
            confirmDelete(this.items.get(checkedItemPosition));
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$4$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ void m28lambda$onCreate$4$commcportb173ResourcePackActivity(View view) {
        finish();
    }

    private File dataDir() {
        return Prefs.dataDir(this);
    }

    private void refresh() {
        this.items.clear();
        this.items.add("Default");
        String[] list = Prefs.packsDir(this).list();
        if (list != null) {
            Arrays.sort(list);
            for (String str : list) {
                if (str.toLowerCase().endsWith(".zip")) {
                    this.items.add(str);
                }
            }
        }
        this.adapter.notifyDataSetChanged();
        String option = FirstRun.readOption(dataDir(), "skin");
        int iMax = option != null ? Math.max(0, this.items.indexOf(option)) : 0;
        if (option != null && iMax == 0) {
            option.equals("Default");
        }
        this.list.setItemChecked(iMax, true);
    }

    private void select(int i) {
        String str;
        if (this.fromGame) {
            Toast.makeText(this, "Select packs in the game's own texture pack menu", 0).show();
            refresh();
            return;
        }
        try {
            FirstRun.writeOption(dataDir(), "skin", this.items.get(i));
            if (i == 0) {
                str = "Default textures selected";
            } else {
                str = "Selected " + this.items.get(i);
            }
            Toast.makeText(this, str, 0).show();
        } catch (IOException e) {
            Toast.makeText(this, "Could not save: " + e.getMessage(), 1).show();
        }
    }

    private void confirmDelete(final String str) {
        new AlertDialog.Builder(this).setTitle("Delete " + str + "?").setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).setPositiveButton("Delete", new DialogInterface.OnClickListener() { // from class: com.mcport.b173.ResourcePackActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m23lambda$confirmDelete$5$commcportb173ResourcePackActivity(str, dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: renamed from: lambda$confirmDelete$5$com-mcport-b173-ResourcePackActivity, reason: not valid java name */
    /* synthetic */ void m23lambda$confirmDelete$5$commcportb173ResourcePackActivity(String str, DialogInterface dialogInterface, int i) {
        new File(Prefs.packsDir(this), str).delete();
        if (str.equals(FirstRun.readOption(dataDir(), "skin"))) {
            try {
                FirstRun.writeOption(dataDir(), "skin", "Default");
            } catch (IOException unused) {
            }
        }
        refresh();
    }

    private void pick() {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"application/zip", "application/x-zip-compressed", "application/octet-stream"});
        startActivityForResult(intent, 21);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != 21 || i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        Uri data = intent.getData();
        String strDisplayName = displayName(data);
        if (strDisplayName == null) {
            strDisplayName = "pack.zip";
        }
        String strReplaceAll = strDisplayName.replaceAll("[\\\\/:*?\"<>|]", "_");
        if (!strReplaceAll.toLowerCase().endsWith(".zip")) {
            strReplaceAll = strReplaceAll + ".zip";
        }
        File file = new File(getCacheDir(), "import.zip");
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(data);
            try {
                SkinUtil.copy(inputStreamOpenInputStream, file);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                String strValidate = validate(file);
                if (strValidate != null) {
                    file.delete();
                    show("Pack not imported", strValidate);
                    return;
                }
                File file2 = new File(Prefs.packsDir(this), strReplaceAll);
                if (file2.exists()) {
                    file2.delete();
                }
                if (!file.renameTo(file2)) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            SkinUtil.copy(fileInputStream, file2);
                            fileInputStream.close();
                            file.delete();
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e) {
                        show("Import failed", e.getMessage());
                        return;
                    }
                }
                refresh();
                Toast.makeText(this, "Imported " + strReplaceAll, 0).show();
            } catch (Throwable th3) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Exception e2) {
            show("Import failed", "The file could not be read: " + e2.getMessage());
        }
    }

    static String validate(File file) {
        String string;
        if (file.length() == 0) {
            return "The file is empty.";
        }
        try {
            ZipFile zipFile = new ZipFile(file);
            try {
                ArrayList arrayList = new ArrayList();
                int i = 10;
                String[] strArr = {"terrain.png", "gui/items.png", "gui/gui.png", "pack.txt", "pack.png", "mob/char.png", "font/default.png", "gui/background.png", "particles.png", "environment/clouds.png"};
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                boolean z = false;
                boolean z2 = false;
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (name.startsWith("assets/") || name.equals("pack.mcmeta")) {
                        z2 = true;
                    }
                    int i2 = 0;
                    while (i2 < i) {
                        if (name.equals(strArr[i2])) {
                            z = true;
                        }
                        i2++;
                        i = 10;
                    }
                    if (!zipEntryNextElement.isDirectory() && name.toLowerCase().endsWith(".png")) {
                        InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inScaled = false;
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                            if (bitmapDecodeStream != null) {
                                if ((!name.equals("terrain.png") && !name.equals("gui/items.png")) || (bitmapDecodeStream.getWidth() == 256 && bitmapDecodeStream.getHeight() == 256)) {
                                    bitmapDecodeStream.recycle();
                                }
                                String str = name + " is " + bitmapDecodeStream.getWidth() + "x" + bitmapDecodeStream.getHeight() + ". Beta 1.7.3 only supports 16x packs (256x256 terrain.png / items.png); HD packs need mods that this faithful port does not include.";
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                zipFile.close();
                                return str;
                            }
                            arrayList.add(name);
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (Throwable th) {
                            if (inputStream == null) {
                                throw th;
                            }
                            try {
                                inputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                            return "Not a valid zip file (" + e.getMessage() + ").";
                        }
                    }
                    i = 10;
                }
                if (!z) {
                    String str2 = z2 ? "This is a resource pack for newer Minecraft versions (assets/ folder, pack.mcmeta). Beta 1.7.3 cannot use it." : "No Beta texture-pack files found (expected e.g. terrain.png, gui/items.png or pack.txt at the top level of the zip).";
                    zipFile.close();
                    return str2;
                }
                if (arrayList.isEmpty()) {
                    zipFile.close();
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Corrupt or unsupported images in the pack: ");
                if (arrayList.size() > 5) {
                    string = arrayList.subList(0, 5) + " ...";
                } else {
                    string = arrayList.toString();
                }
                sb.append(string);
                String string2 = sb.toString();
                zipFile.close();
                return string2;
            } catch (Throwable th3) {
                try {
                    zipFile.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        } catch (IOException e) {
            return "Not a valid zip file (" + e.getMessage() + ").";
        }
    }

    private String displayName(Uri uri) {
        try {
            Cursor cursorQuery = getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(0);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            if (cursorQuery == null) {
                return null;
            }
            cursorQuery.close();
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private void show(String str, String str2) {
        new AlertDialog.Builder(this).setTitle(str).setMessage(str2).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
    }
}
