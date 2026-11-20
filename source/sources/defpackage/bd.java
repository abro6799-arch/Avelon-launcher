package defpackage;

import java.io.File;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import mcshim.awt.Canvas;
import mcshim.awt.Color;
import mcshim.awt.Graphics;
import mcshim.awt.Graphics2D;
import mcshim.awt.Rectangle;
import mcshim.awt.RenderingHints;
import mcshim.awt.event.KeyEvent;
import mcshim.awt.event.KeyListener;
import mcshim.awt.event.MouseEvent;
import mcshim.awt.event.MouseListener;
import mcshim.awt.event.MouseMotionListener;
import mcshim.awt.geom.AffineTransform;
import mcshim.awt.image.BufferStrategy;

/* JADX INFO: loaded from: classes.dex */
public class bd extends Canvas implements KeyListener, MouseListener, MouseMotionListener, Runnable {
    private fd d;
    private int i;
    private int j;
    private int k;
    private int l;
    private int a = 0;
    private int b = 2;
    private boolean c = true;
    private boolean f = true;
    private List g = Collections.synchronizedList(new LinkedList());
    private re[][] h = (re[][]) Array.newInstance((Class<?>) re.class, 64, 64);
    private File e = a();

    public void keyReleased(KeyEvent keyEvent) {
    }

    public void keyTyped(KeyEvent keyEvent) {
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseExited(MouseEvent mouseEvent) {
    }

    public void mouseMoved(MouseEvent mouseEvent) {
    }

    public void mouseReleased(MouseEvent mouseEvent) {
    }

    @Override // mcshim.awt.Canvas
    public void paint(Graphics graphics) {
    }

    @Override // mcshim.awt.Canvas
    public void update(Graphics graphics) {
    }

    public File a() {
        if (this.e == null) {
            this.e = a("minecraft");
        }
        return this.e;
    }

    public File a(String str) {
        File file;
        File file2;
        String property = System.getProperty("user.home", ".");
        int i = tu.a[e().ordinal()];
        if (i == 1 || i == 2) {
            file = new File(property, "." + str + '/');
        } else {
            if (i == 3) {
                String str2 = System.getenv("APPDATA");
                if (str2 != null) {
                    file2 = new File(str2, "." + str + '/');
                } else {
                    file = new File(property, "." + str + '/');
                }
            } else if (i == 4) {
                file2 = new File(property, "Library/Application Support/" + str);
            } else {
                file2 = new File(property, str + '/');
            }
            if (!file2.exists() || file2.mkdirs()) {
                return file2;
            }
            throw new RuntimeException("The working directory could not be created: " + file2);
        }
        file2 = file;
        if (file2.exists()) {
        }
        return file2;
    }

    private static jn e() {
        String lowerCase = System.getProperty("os.name").toLowerCase();
        if (lowerCase.contains("win")) {
            return jn.windows;
        }
        if (lowerCase.contains("mac")) {
            return jn.macos;
        }
        if (!lowerCase.contains("solaris") && !lowerCase.contains("sunos")) {
            if (!lowerCase.contains("linux") && !lowerCase.contains("unix")) {
                return jn.unknown;
            }
            return jn.linux;
        }
        return jn.solaris;
    }

    public bd() {
        for (int i = 0; i < 64; i++) {
            for (int i2 = 0; i2 < 64; i2++) {
                this.h[i][i2] = new re(null, i, i2);
            }
        }
        addMouseListener((MouseListener) this);
        addMouseMotionListener((MouseMotionListener) this);
        addKeyListener((KeyListener) this);
        setFocusable(true);
        requestFocus();
        setBackground(Color.red);
    }

    public void b(String str) {
        this.j = 0;
        this.i = 0;
        fd fdVar = new fd(new fm(new File(this.e, "saves"), str, false), str, new Random().nextLong());
        this.d = fdVar;
        fdVar.f = 0;
        synchronized (this.g) {
            this.g.clear();
            for (int i = 0; i < 64; i++) {
                for (int i2 = 0; i2 < 64; i2++) {
                    this.h[i][i2].a(this.d, i, i2);
                }
            }
        }
    }

    private void a(int i) {
        synchronized (this.g) {
            this.d.f = i;
            this.g.clear();
            for (int i2 = 0; i2 < 64; i2++) {
                for (int i3 = 0; i3 < 64; i3++) {
                    this.h[i2][i3].a(this.d, i2, i3);
                }
            }
        }
    }

    public void b() {
        new tx(this).start();
        for (int i = 0; i < 8; i++) {
            new Thread(this).start();
        }
    }

    public void c() {
        this.f = false;
    }

    private re a(int i, int i2) {
        re reVar = this.h[i & 63][i2 & 63];
        if (reVar.c == i && reVar.d == i2) {
            return reVar;
        }
        synchronized (this.g) {
            this.g.remove(reVar);
        }
        reVar.a(i, i2);
        return reVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        re reVar;
        un unVar = new un();
        while (this.f) {
            synchronized (this.g) {
                reVar = this.g.size() > 0 ? (re) this.g.remove(0) : null;
            }
            if (reVar != null) {
                if (this.a - reVar.g < 2) {
                    unVar.a(reVar);
                    repaint();
                } else {
                    reVar.h = false;
                }
            }
            try {
                Thread.sleep(2L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void d() {
        BufferStrategy bufferStrategy = getBufferStrategy();
        if (bufferStrategy == null) {
            createBufferStrategy(2);
        } else {
            a((Graphics2D) bufferStrategy.getDrawGraphics());
            bufferStrategy.show();
        }
    }

    public void a(Graphics2D graphics2D) {
        this.a++;
        AffineTransform transform = graphics2D.getTransform();
        graphics2D.setClip(0, 0, getWidth(), getHeight());
        graphics2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR);
        graphics2D.translate(getWidth() / 2, getHeight() / 2);
        int i = this.b;
        graphics2D.scale(i, i);
        graphics2D.translate(this.i, this.j);
        fd fdVar = this.d;
        if (fdVar != null) {
            br brVarU = fdVar.u();
            graphics2D.translate(-(brVarU.a + brVarU.c), (-((-brVarU.a) + brVarU.c)) + 64);
        }
        Rectangle clipBounds = graphics2D.getClipBounds();
        graphics2D.setColor(new Color(-15724512));
        graphics2D.fillRect(clipBounds.x, clipBounds.y, clipBounds.width, clipBounds.height);
        int i2 = (((clipBounds.x / 16) / 2) - 2) - 3;
        int i3 = (((clipBounds.x + clipBounds.width) / 16) / 2) + 1 + 3;
        int i4 = ((((clipBounds.y + clipBounds.height) + 16) + 128) / 16) + 1 + 6;
        for (int i5 = ((clipBounds.y / 16) - 1) - 6; i5 <= i4; i5++) {
            for (int i6 = i2; i6 <= i3; i6++) {
                re reVarA = a(i6 - (i5 >> 1), ((i5 + 1) >> 1) + i6);
                reVarA.g = this.a;
                if (!reVarA.e) {
                    if (!reVarA.h) {
                        reVarA.h = true;
                        this.g.add(reVarA);
                    }
                } else {
                    reVarA.h = false;
                    if (!reVarA.f) {
                        graphics2D.drawImage(reVarA.a, (i6 * 16 * 2) + ((i5 & 1) * 16), ((i5 * 16) - 128) - 16, null);
                    }
                }
            }
        }
        if (this.c) {
            graphics2D.setTransform(transform);
            int height = (getHeight() - 32) - 4;
            graphics2D.setColor(new Color(Integer.MIN_VALUE, true));
            graphics2D.fillRect(4, (getHeight() - 32) - 4, getWidth() - 8, 32);
            graphics2D.setColor(Color.WHITE);
            graphics2D.drawString("F1 - F5: load levels   |   0-9: Set time of day   |   Space: return to spawn   |   Double click: zoom   |   Escape: hide this text", (getWidth() / 2) - (graphics2D.getFontMetrics().stringWidth("F1 - F5: load levels   |   0-9: Set time of day   |   Space: return to spawn   |   Double click: zoom   |   Escape: hide this text") / 2), height + 20);
        }
        graphics2D.dispose();
    }

    public void mouseDragged(MouseEvent mouseEvent) {
        int x = mouseEvent.getX() / this.b;
        int y = mouseEvent.getY() / this.b;
        this.i += x - this.k;
        this.j += y - this.l;
        this.k = x;
        this.l = y;
        repaint();
    }

    public void mouseClicked(MouseEvent mouseEvent) {
        if (mouseEvent.getClickCount() == 2) {
            this.b = 3 - this.b;
            repaint();
        }
    }

    public void mousePressed(MouseEvent mouseEvent) {
        int x = mouseEvent.getX() / this.b;
        int y = mouseEvent.getY() / this.b;
        this.k = x;
        this.l = y;
    }

    public void keyPressed(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 48) {
            a(11);
        }
        if (keyEvent.getKeyCode() == 49) {
            a(10);
        }
        if (keyEvent.getKeyCode() == 50) {
            a(9);
        }
        if (keyEvent.getKeyCode() == 51) {
            a(7);
        }
        if (keyEvent.getKeyCode() == 52) {
            a(6);
        }
        if (keyEvent.getKeyCode() == 53) {
            a(5);
        }
        if (keyEvent.getKeyCode() == 54) {
            a(3);
        }
        if (keyEvent.getKeyCode() == 55) {
            a(2);
        }
        if (keyEvent.getKeyCode() == 56) {
            a(1);
        }
        if (keyEvent.getKeyCode() == 57) {
            a(0);
        }
        if (keyEvent.getKeyCode() == 112) {
            b("World1");
        }
        if (keyEvent.getKeyCode() == 113) {
            b("World2");
        }
        if (keyEvent.getKeyCode() == 114) {
            b("World3");
        }
        if (keyEvent.getKeyCode() == 115) {
            b("World4");
        }
        if (keyEvent.getKeyCode() == 116) {
            b("World5");
        }
        if (keyEvent.getKeyCode() == 32) {
            this.j = 0;
            this.i = 0;
        }
        if (keyEvent.getKeyCode() == 27) {
            this.c = !this.c;
        }
        repaint();
    }
}
