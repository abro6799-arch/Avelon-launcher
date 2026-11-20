package org.lwjgl.opengl;

import mcport.NativeDisplay;
import mcport.NativeLib;
import mcport.Platform;
import mcshim.awt.Canvas;
import org.lwjgl.LWJGLException;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

/* JADX INFO: loaded from: classes.dex */
public final class Display {
    private static boolean created;

    public static boolean isVisible() {
        return true;
    }

    public static void setDisplayMode(DisplayMode displayMode) {
    }

    public static void setFullscreen(boolean z) {
    }

    public static void setParent(Canvas canvas) {
    }

    public static void setTitle(String str) {
    }

    public static void sync(int i) {
    }

    public static DisplayMode getDisplayMode() {
        return new DisplayMode(Platform.get().surfaceWidth(), Platform.get().surfaceHeight());
    }

    public static DisplayMode getDesktopDisplayMode() {
        return getDisplayMode();
    }

    public static void create() throws LWJGLException {
        if (created) {
            return;
        }
        NativeLib.load();
        Platform platform = Platform.get();
        if (!NativeDisplay.create(platform.waitForSurface(), platform.surfaceWidth(), platform.surfaceHeight())) {
            throw new LWJGLException("Could not create OpenGL ES context");
        }
        NativeDisplay.swapInterval(platform.swapInterval());
        created = true;
        platform.onContextCreated();
    }

    public static boolean isCreated() {
        return created;
    }

    public static void destroy() {
        if (created) {
            NativeDisplay.destroy();
            created = false;
        }
    }

    public static boolean isCloseRequested() {
        return Platform.get().isCloseRequested();
    }

    public static boolean isActive() {
        return Platform.get().isActive();
    }

    public static void swapBuffers() {
        if (created) {
            NativeDisplay.swap();
        }
    }

    public static void update() {
        if (created) {
            NativeDisplay.swap();
        }
        Platform.get().onFrame();
        Mouse.poll();
        Keyboard.poll();
    }
}
