package com.mcport.b173;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LauncherActivity extends Activity {
    static final String ACTION_PROFILE = "com.mcport.b173.PROFILE";
    private static final int REQ_BACKUP = 12;
    private static final int REQ_RESTORE = 13;
    private static final int REQ_SKIN = 11;
    private float dp;
    private EditText name;
    private Prefs prefs;
    private ImageView preview;
    private int selectedServer = -1;
    private ArrayAdapter<Prefs.Server> serverAdapter;
    private ListView serverList;
    private List<Prefs.Server> servers;
    private Spinner skinSpinner;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.prefs = new Prefs(this);
        this.dp = getResources().getDisplayMetrics().density;
        build();
        if (bundle == null && this.prefs.skipLauncher() && this.prefs.sp.contains("username") && "android.intent.action.MAIN".equals(getIntent().getAction())) {
            play(null, 0);
        }
    }

    private TextView header(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(17.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        float f = this.dp;
        textView.setPadding(0, (int) (18.0f * f), 0, (int) (f * 6.0f));
        return textView;
    }

    private Button button(String str, View.OnClickListener onClickListener) {
        Button button = new Button(this);
        button.setText(str);
        button.setAllCaps(false);
        button.setOnClickListener(onClickListener);
        return button;
    }

    private LinearLayout row() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        return linearLayout;
    }

    private LinearLayout.LayoutParams weight() {
        return new LinearLayout.LayoutParams(0, -2, 1.0f);
    }

    private void build() {
        ScrollView scrollView = new ScrollView(this);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i = (int) (this.dp * 18.0f);
        linearLayout.setPadding(i, i, i, i);
        scrollView.addView(linearLayout);
        TextView textView = new TextView(this);
        textView.setText("Minecraft Beta 1.7.3");
        textView.setTextSize(24.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("Android port - settings. The game itself starts unchanged when you press Play.");
        linearLayout.addView(textView2);
        Button button = button("Play", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m6lambda$build$0$commcportb173LauncherActivity(view);
            }
        });
        button.setTextSize(20.0f);
        linearLayout.addView(button, new LinearLayout.LayoutParams(-1, (int) (this.dp * 64.0f)));
        linearLayout.addView(header("Username"));
        EditText editText = new EditText(this);
        this.name = editText;
        editText.setSingleLine();
        this.name.setText(this.prefs.username());
        this.name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(16)});
        this.name.setInputType(524289);
        linearLayout.addView(this.name);
        TextView textView3 = new TextView(this);
        textView3.setText("1-16 characters: letters, digits and _ . Used in single-player and sent to servers (offline-mode servers only).");
        textView3.setTextSize(12.0f);
        linearLayout.addView(textView3);
        linearLayout.addView(header("Skin"));
        LinearLayout linearLayoutRow = row();
        ImageView imageView = new ImageView(this);
        this.preview = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        View view = this.preview;
        float f = this.dp;
        linearLayoutRow.addView(view, new LinearLayout.LayoutParams((int) (64.0f * f), (int) (f * 128.0f)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding((int) (this.dp * 12.0f), 0, 0, 0);
        Spinner spinner = new Spinner(this);
        this.skinSpinner = spinner;
        linearLayout2.addView(spinner);
        LinearLayout linearLayoutRow2 = row();
        linearLayoutRow2.addView(button("Import PNG...", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m7lambda$build$1$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayoutRow2.addView(button("Remove", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m11lambda$build$2$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayout2.addView(linearLayoutRow2);
        TextView textView4 = new TextView(this);
        textView4.setText("Use skin files you are allowed to use (for example your own). Skins are stored on this device only and shown on your own player.");
        textView4.setTextSize(12.0f);
        linearLayout2.addView(textView4);
        linearLayoutRow.addView(linearLayout2, weight());
        linearLayout.addView(linearLayoutRow);
        refreshSkins();
        linearLayout.addView(header("Multiplayer servers"));
        this.servers = this.prefs.servers();
        ListView listView = new ListView(this);
        this.serverList = listView;
        listView.setChoiceMode(1);
        ArrayAdapter<Prefs.Server> arrayAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_single_choice, this.servers);
        this.serverAdapter = arrayAdapter;
        this.serverList.setAdapter((ListAdapter) arrayAdapter);
        this.serverList.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda10
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                this.f$0.m12lambda$build$3$commcportb173LauncherActivity(adapterView, view2, i2, j);
            }
        });
        linearLayout.addView(this.serverList, new LinearLayout.LayoutParams(-1, (int) (this.dp * 150.0f)));
        LinearLayout linearLayoutRow3 = row();
        linearLayoutRow3.addView(button("Join", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m13lambda$build$4$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayoutRow3.addView(button("Add", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m14lambda$build$5$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayoutRow3.addView(button("Edit", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m15lambda$build$6$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayoutRow3.addView(button("Delete", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m16lambda$build$7$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayout.addView(linearLayoutRow3);
        TextView textView5 = new TextView(this);
        textView5.setText("Beta 1.7.3 protocol (version 14). Servers that require Mojang authentication cannot be joined: the legacy login service no longer exists and this port does not bypass it. The original \"Multiplayer\" menu inside the game also works.");
        textView5.setTextSize(12.0f);
        linearLayout.addView(textView5);
        linearLayout.addView(header("More"));
        linearLayout.addView(button("Resource packs...", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m17lambda$build$8$commcportb173LauncherActivity(view2);
            }
        }));
        linearLayout.addView(button("Touch controls, controller and display...", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m18lambda$build$9$commcportb173LauncherActivity(view2);
            }
        }));
        LinearLayout linearLayoutRow4 = row();
        linearLayoutRow4.addView(button("Back up worlds...", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m8lambda$build$10$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayoutRow4.addView(button("Restore worlds...", new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m9lambda$build$11$commcportb173LauncherActivity(view2);
            }
        }), weight());
        linearLayout.addView(linearLayoutRow4);
        CheckBox checkBox = new CheckBox(this);
        checkBox.setText("Start the game directly when the app opens (this screen returns via Profile on the title screen, or after Quit Game)");
        checkBox.setChecked(this.prefs.skipLauncher());
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m10lambda$build$12$commcportb173LauncherActivity(compoundButton, z);
            }
        });
        linearLayout.addView(checkBox);
        TextView textView6 = new TextView(this);
        textView6.setText("\nUnofficial port for personal use. Requires the original Minecraft Beta 1.7.3 game files, which are copyrighted by Mojang AB. Not affiliated with Mojang or Microsoft. Version 1.0.0-b1.7.3");
        textView6.setTextSize(11.0f);
        textView6.setTextColor(-7829368);
        linearLayout.addView(textView6);
        setContentView(scrollView);
    }

    /* JADX INFO: renamed from: lambda$build$0$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m6lambda$build$0$commcportb173LauncherActivity(View view) {
        play(null, 0);
    }

    /* JADX INFO: renamed from: lambda$build$1$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m7lambda$build$1$commcportb173LauncherActivity(View view) {
        pickSkin();
    }

    /* JADX INFO: renamed from: lambda$build$2$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m11lambda$build$2$commcportb173LauncherActivity(View view) {
        removeSkin();
    }

    /* JADX INFO: renamed from: lambda$build$3$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m12lambda$build$3$commcportb173LauncherActivity(AdapterView adapterView, View view, int i, long j) {
        this.selectedServer = i;
    }

    /* JADX INFO: renamed from: lambda$build$4$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m13lambda$build$4$commcportb173LauncherActivity(View view) {
        int i = this.selectedServer;
        if (i < 0 || i >= this.servers.size()) {
            toast("Select a server first");
        } else {
            Prefs.Server server = this.servers.get(this.selectedServer);
            play(server.host, server.port);
        }
    }

    /* JADX INFO: renamed from: lambda$build$5$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m14lambda$build$5$commcportb173LauncherActivity(View view) {
        editServer(-1);
    }

    /* JADX INFO: renamed from: lambda$build$6$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m15lambda$build$6$commcportb173LauncherActivity(View view) {
        int i = this.selectedServer;
        if (i >= 0) {
            editServer(i);
        }
    }

    /* JADX INFO: renamed from: lambda$build$7$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m16lambda$build$7$commcportb173LauncherActivity(View view) {
        int i = this.selectedServer;
        if (i < 0 || i >= this.servers.size()) {
            return;
        }
        this.servers.remove(this.selectedServer);
        this.selectedServer = -1;
        this.serverList.clearChoices();
        saveServers();
    }

    /* JADX INFO: renamed from: lambda$build$8$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m17lambda$build$8$commcportb173LauncherActivity(View view) {
        startActivity(new Intent(this, (Class<?>) ResourcePackActivity.class));
    }

    /* JADX INFO: renamed from: lambda$build$9$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m18lambda$build$9$commcportb173LauncherActivity(View view) {
        startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
    }

    /* JADX INFO: renamed from: lambda$build$10$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m8lambda$build$10$commcportb173LauncherActivity(View view) {
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("application/zip");
        intent.putExtra("android.intent.extra.TITLE", "minecraft-b173-worlds.zip");
        startActivityForResult(intent, 12);
    }

    /* JADX INFO: renamed from: lambda$build$11$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m9lambda$build$11$commcportb173LauncherActivity(View view) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        startActivityForResult(intent, 13);
    }

    /* JADX INFO: renamed from: lambda$build$12$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m10lambda$build$12$commcportb173LauncherActivity(CompoundButton compoundButton, boolean z) {
        this.prefs.sp.edit().putBoolean("skipLauncher", z).apply();
    }

    private boolean saveName() {
        String strTrim = this.name.getText().toString().trim();
        if (strTrim.matches("[A-Za-z0-9_]{1,16}")) {
            this.prefs.sp.edit().putString("username", strTrim).apply();
            return true;
        }
        this.name.setError("Use 1-16 letters, digits or _");
        return false;
    }

    private void play(String str, int i) {
        if (saveName()) {
            Intent intent = new Intent(this, (Class<?>) GameActivity.class);
            if (str != null) {
                intent.putExtra("host", str);
                intent.putExtra("port", i);
            }
            startActivity(intent);
        }
    }

    private List<String> skinFiles() {
        String[] list = Prefs.skinsDir(this).list();
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Arrays.sort(list);
            for (String str : list) {
                if (str.endsWith(".png")) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    private void refreshSkins() {
        final List<String> listSkinFiles = skinFiles();
        ArrayList arrayList = new ArrayList();
        arrayList.add("Default (char.png)");
        for (String str : listSkinFiles) {
            arrayList.add(str.substring(0, str.length() - 4));
        }
        this.skinSpinner.setAdapter((SpinnerAdapter) new ArrayAdapter(this, android.R.layout.simple_spinner_dropdown_item, arrayList));
        this.skinSpinner.setSelection(Math.max(0, listSkinFiles.indexOf(this.prefs.skin()) + 1));
        this.skinSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.mcport.b173.LauncherActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                LauncherActivity.this.prefs.sp.edit().putString("skin", i == 0 ? "" : (String) listSkinFiles.get(i - 1)).apply();
                LauncherActivity.this.updatePreview();
            }
        });
        updatePreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreview() {
        String strSkin = this.prefs.skin();
        Bitmap bitmapDefaultSkin = strSkin.isEmpty() ? SkinUtil.defaultSkin(this) : SkinUtil.load(new File(Prefs.skinsDir(this), strSkin));
        if (bitmapDefaultSkin == null) {
            bitmapDefaultSkin = SkinUtil.defaultSkin(this);
        }
        this.preview.setImageBitmap(SkinUtil.preview(bitmapDefaultSkin, 8));
    }

    private void worldBackup(final boolean z, final Uri uri) {
        final File file = new File(Prefs.dataDir(this), "saves");
        file.mkdirs();
        new Thread(new Runnable() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m22lambda$worldBackup$14$commcportb173LauncherActivity(z, uri, file);
            }
        }, "world-backup").start();
    }

    /* JADX INFO: renamed from: lambda$worldBackup$14$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m22lambda$worldBackup$14$commcportb173LauncherActivity(final boolean z, Uri uri, File file) {
        final String string;
        try {
            if (z) {
                OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uri);
                try {
                    int iExport = WorldBackup.export(file, outputStreamOpenOutputStream);
                    if (outputStreamOpenOutputStream != null) {
                        outputStreamOpenOutputStream.close();
                    }
                    string = "Backed up " + iExport + " world(s).";
                } catch (Throwable th) {
                    if (outputStreamOpenOutputStream != null) {
                        try {
                            outputStreamOpenOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } else {
                InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
                try {
                    String strRestore = WorldBackup.restore(file, inputStreamOpenInputStream);
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                    string = strRestore;
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
            }
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "Backup failed: " : "Restore failed: ");
            sb.append(e.getMessage());
            string = sb.toString();
        }
        runOnUiThread(new Runnable() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m21lambda$worldBackup$13$commcportb173LauncherActivity(z, string);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$worldBackup$13$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m21lambda$worldBackup$13$commcportb173LauncherActivity(boolean z, String str) {
        new AlertDialog.Builder(this).setTitle(z ? "Back up worlds" : "Restore worlds").setMessage(str).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
    }

    private void pickSkin() {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/png");
        startActivityForResult(intent, 11);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        if (i == 12 || i == 13) {
            worldBackup(i == 12, intent.getData());
            return;
        }
        if (i != 11) {
            return;
        }
        Uri data = intent.getData();
        String strDisplayName = displayName(data);
        if (strDisplayName == null) {
            strDisplayName = "skin";
        }
        String strReplaceAll = strDisplayName.replaceAll("\\.png$", "").replaceAll("[^A-Za-z0-9_ -]", "_");
        if (strReplaceAll.isEmpty()) {
            strReplaceAll = "skin";
        }
        File file = new File(Prefs.skinsDir(this), strReplaceAll + ".png");
        int i3 = 2;
        while (file.exists()) {
            file = new File(Prefs.skinsDir(this), strReplaceAll + " " + i3 + ".png");
            i3++;
        }
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(data);
            try {
                SkinUtil.copy(inputStreamOpenInputStream, file);
                String strValidate = SkinUtil.validate(SkinUtil.load(file));
                if (strValidate != null) {
                    file.delete();
                    new AlertDialog.Builder(this).setTitle("Skin not imported").setMessage(strValidate).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                        return;
                    }
                    return;
                }
                this.prefs.sp.edit().putString("skin", file.getName()).apply();
                refreshSkins();
                toast("Skin imported");
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            file.delete();
            toast("Could not read file: " + e.getMessage());
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

    private void removeSkin() {
        String strSkin = this.prefs.skin();
        if (strSkin.isEmpty()) {
            return;
        }
        new File(Prefs.skinsDir(this), strSkin).delete();
        this.prefs.sp.edit().putString("skin", "").apply();
        refreshSkins();
    }

    private void editServer(final int i) {
        String str;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i2 = (int) (this.dp * 16.0f);
        linearLayout.setPadding(i2, i2, i2, 0);
        final EditText editText = new EditText(this);
        editText.setHint("Server name");
        editText.setSingleLine();
        final EditText editText2 = new EditText(this);
        editText2.setHint("Address (host or host:port)");
        editText2.setSingleLine();
        editText2.setInputType(17);
        if (i >= 0) {
            Prefs.Server server = this.servers.get(i);
            editText.setText(server.name);
            if (server.port == 25565) {
                str = server.host;
            } else {
                str = server.host + ":" + server.port;
            }
            editText2.setText(str);
        }
        linearLayout.addView(editText);
        linearLayout.addView(editText2);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle(i < 0 ? "Add server" : "Edit server").setView(linearLayout).setPositiveButton("Save", (DialogInterface.OnClickListener) null).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.m20lambda$editServer$16$commcportb173LauncherActivity(alertDialogCreate, editText2, editText, i, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: renamed from: lambda$editServer$16$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m20lambda$editServer$16$commcportb173LauncherActivity(final AlertDialog alertDialog, final EditText editText, final EditText editText2, final int i, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.mcport.b173.LauncherActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m19lambda$editServer$15$commcportb173LauncherActivity(editText, editText2, i, alertDialog, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$editServer$15$com-mcport-b173-LauncherActivity, reason: not valid java name */
    /* synthetic */ void m19lambda$editServer$15$commcportb173LauncherActivity(EditText editText, EditText editText2, int i, AlertDialog alertDialog, View view) {
        Object[] address = Prefs.parseAddress(editText.getText().toString());
        if (address == null) {
            editText.setError("Enter host or host:port (port 1-65535)");
            return;
        }
        String strTrim = editText2.getText().toString().trim();
        if (strTrim.isEmpty()) {
            strTrim = "Minecraft Server";
        }
        Prefs.Server server = new Prefs.Server(strTrim, (String) address[0], ((Integer) address[1]).intValue());
        List<Prefs.Server> list = this.servers;
        if (i < 0) {
            list.add(server);
        } else {
            list.set(i, server);
        }
        saveServers();
        alertDialog.dismiss();
    }

    private void saveServers() {
        this.prefs.setServers(this.servers);
        this.serverAdapter.notifyDataSetChanged();
    }

    private void toast(String str) {
        Toast.makeText(this, str, 0).show();
    }
}
