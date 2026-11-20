package paulscode.sound;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SoundSystemConfig {
    public static final int ATTENUATION_LINEAR = 2;
    public static final int ATTENUATION_NONE = 0;
    public static final int ATTENUATION_ROLLOFF = 1;
    public static final String EXTENSION_MIDI = ".*[mM][iI][dD][iI]?$";
    public static final String PREFIX_URL = "^[hH][tT][tT][pP]://.*";
    public static final Object THREAD_SYNC = new Object();
    public static final int TYPE_NORMAL = 0;
    public static final int TYPE_STREAMING = 1;
    private static LinkedList codecs = null;
    private static int defaultAttenuationModel = 1;
    private static float defaultFadeDistance = 1000.0f;
    private static float defaultRolloffFactor = 0.03f;
    private static int fileChunkSize = 1048576;
    private static LinkedList libraries = null;
    private static SoundSystemLogger logger = null;
    private static float masterGain = 1.0f;
    private static int maxFileSize = 268435456;
    private static boolean midiCodec = false;
    private static int numberNormalChannels = 28;
    private static int numberStreamingBuffers = 3;
    private static int numberStreamingChannels = 4;
    private static String soundFilesPackage = "Sounds/";
    private static int streamingBufferSize = 131072;

    public static void addLibrary(Class cls) throws SoundSystemException {
        if (cls == null) {
            throw new SoundSystemException("Parameter null in method 'addLibrary'", 2);
        }
        if (!Library.class.isAssignableFrom(cls)) {
            throw new SoundSystemException("The specified class does not extend class 'Library' in method 'addLibrary'");
        }
        if (libraries == null) {
            libraries = new LinkedList();
        }
        if (libraries.contains(cls)) {
            return;
        }
        libraries.add(cls);
    }

    public static void removeLibrary(Class cls) {
        LinkedList linkedList = libraries;
        if (linkedList == null || cls == null) {
            return;
        }
        linkedList.remove(cls);
    }

    public static LinkedList getLibraries() {
        return libraries;
    }

    public static boolean libraryCompatible(Class cls) {
        if (cls == null) {
            errorMessage("Parameter 'libraryClass' null in method'librayCompatible'");
            return false;
        }
        if (!Library.class.isAssignableFrom(cls)) {
            errorMessage("The specified class does not extend class 'Library' in method 'libraryCompatible'");
            return false;
        }
        Object objRunMethod = runMethod(cls, "libraryCompatible", new Class[0], new Object[0]);
        if (objRunMethod == null) {
            errorMessage("Method 'Library.libraryCompatible' returned 'null' in method 'libraryCompatible'");
            return false;
        }
        return ((Boolean) objRunMethod).booleanValue();
    }

    public static String getLibraryTitle(Class cls) {
        if (cls == null) {
            errorMessage("Parameter 'libraryClass' null in method'getLibrayTitle'");
            return null;
        }
        if (!Library.class.isAssignableFrom(cls)) {
            errorMessage("The specified class does not extend class 'Library' in method 'getLibraryTitle'");
            return null;
        }
        Object objRunMethod = runMethod(cls, "getTitle", new Class[0], new Object[0]);
        if (objRunMethod == null) {
            errorMessage("Method 'Library.getTitle' returned 'null' in method 'getLibraryTitle'");
            return null;
        }
        return (String) objRunMethod;
    }

    public static String getLibraryDescription(Class cls) {
        if (cls == null) {
            errorMessage("Parameter 'libraryClass' null in method'getLibrayDescription'");
            return null;
        }
        if (!Library.class.isAssignableFrom(cls)) {
            errorMessage("The specified class does not extend class 'Library' in method 'getLibraryDescription'");
            return null;
        }
        Object objRunMethod = runMethod(cls, "getDescription", new Class[0], new Object[0]);
        if (objRunMethod == null) {
            errorMessage("Method 'Library.getDescription' returned 'null' in method 'getLibraryDescription'");
            return null;
        }
        return (String) objRunMethod;
    }

    public static void setLogger(SoundSystemLogger soundSystemLogger) {
        logger = soundSystemLogger;
    }

    public static SoundSystemLogger getLogger() {
        return logger;
    }

    public static synchronized void setNumberNormalChannels(int i) {
        numberNormalChannels = i;
    }

    public static synchronized int getNumberNormalChannels() {
        return numberNormalChannels;
    }

    public static synchronized void setNumberStreamingChannels(int i) {
        numberStreamingChannels = i;
    }

    public static synchronized int getNumberStreamingChannels() {
        return numberStreamingChannels;
    }

    public static synchronized void setMasterGain(float f) {
        masterGain = f;
    }

    public static synchronized float getMasterGain() {
        return masterGain;
    }

    public static synchronized void setDefaultAttenuation(int i) {
        defaultAttenuationModel = i;
    }

    public static synchronized int getDefaultAttenuation() {
        return defaultAttenuationModel;
    }

    public static synchronized void setDefaultRolloff(float f) {
        defaultRolloffFactor = f;
    }

    public static synchronized float getDefaultRolloff() {
        return defaultRolloffFactor;
    }

    public static synchronized void setDefaultFadeDistance(float f) {
        defaultFadeDistance = f;
    }

    public static synchronized float getDefaultFadeDistance() {
        return defaultFadeDistance;
    }

    public static synchronized void setSoundFilesPackage(String str) {
        soundFilesPackage = str;
    }

    public static synchronized String getSoundFilesPackage() {
        return soundFilesPackage;
    }

    public static synchronized void setStreamingBufferSize(int i) {
        streamingBufferSize = i;
    }

    public static synchronized int getStreamingBufferSize() {
        return streamingBufferSize;
    }

    public static synchronized void setNumberStreamingBuffers(int i) {
        numberStreamingBuffers = i;
    }

    public static synchronized int getNumberStreamingBuffers() {
        return numberStreamingBuffers;
    }

    public static synchronized void setMaxFileSize(int i) {
        maxFileSize = i;
    }

    public static synchronized int getMaxFileSize() {
        return maxFileSize;
    }

    public static synchronized void setFileChunkSize(int i) {
        fileChunkSize = i;
    }

    public static synchronized int getFileChunkSize() {
        return fileChunkSize;
    }

    public static synchronized void setCodec(String str, Class cls) {
        try {
            if (str == null) {
                throw new SoundSystemException("Parameter 'extension' null in method 'setCodec'.", 2);
            }
            if (cls == null) {
                throw new SoundSystemException("Parameter 'iCodecClass' null in method 'setCodec'.", 2);
            }
            if (!ICodec.class.isAssignableFrom(cls)) {
                throw new SoundSystemException("The specified class does not implement interface 'ICodec' in method 'setCodec'", 3);
            }
            if (codecs == null) {
                codecs = new LinkedList();
            }
            ListIterator listIterator = codecs.listIterator();
            while (listIterator.hasNext()) {
                if (str.matches(((Codec) listIterator.next()).extensionRegX)) {
                    listIterator.remove();
                }
            }
            codecs.add(new Codec(str, cls));
            if (str.matches(EXTENSION_MIDI)) {
                midiCodec = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized ICodec getCodec(String str) {
        LinkedList linkedList = codecs;
        if (linkedList == null) {
            return null;
        }
        ListIterator listIterator = linkedList.listIterator();
        while (true) {
            if (!listIterator.hasNext()) {
                return null;
            }
            Codec codec = (Codec) listIterator.next();
            if (str.matches(codec.extensionRegX)) {
                return codec.getInstance();
            }
        }
    }

    public static boolean midiCodec() {
        return midiCodec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void errorMessage(String str) {
        SoundSystemLogger soundSystemLogger = logger;
        if (soundSystemLogger != null) {
            soundSystemLogger.errorMessage("SoundSystemConfig", str, 0);
        }
    }

    private static Object runMethod(Class cls, String str, Class[] clsArr, Object[] objArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            if (method == null) {
                errorMessage("Method '" + str + "' not found for the class specified in method 'runMethod'");
                return null;
            }
            try {
                return method.invoke(null, objArr);
            } catch (ExceptionInInitializerError unused) {
                errorMessage("ExceptionInInitializerError thrown when attempting to invoke method '" + str + "' in method 'runMethod'");
                return null;
            } catch (IllegalAccessException unused2) {
                errorMessage("IllegalAccessException thrown when attempting to invoke method '" + str + "' in method 'runMethod'");
                return null;
            } catch (IllegalArgumentException unused3) {
                errorMessage("IllegalArgumentException thrown when attempting to invoke method '" + str + "' in method 'runMethod'");
                return null;
            } catch (NullPointerException unused4) {
                errorMessage("NullPointerException thrown when attempting to invoke method '" + str + "' in method 'runMethod'");
                return null;
            } catch (InvocationTargetException unused5) {
                errorMessage("InvocationTargetException thrown while attempting to invoke method 'Library.getTitle' in method 'getLibraryTitle'");
                return null;
            }
        } catch (NoSuchMethodException unused6) {
            errorMessage("NoSuchMethodException thrown when attempting to call method '" + str + "' in method 'runMethod'");
            return null;
        } catch (NullPointerException unused7) {
            errorMessage("NullPointerException thrown when attempting to call method '" + str + "' in method 'runMethod'");
            return null;
        } catch (SecurityException unused8) {
            errorMessage("Access denied when attempting to call method '" + str + "' in method 'runMethod'");
            return null;
        }
    }

    class Codec {
        public String extensionRegX;
        public Class iCodecClass;

        public Codec(String str, Class cls) {
            this.extensionRegX = "";
            if (str != null && str.length() > 0) {
                this.extensionRegX = ".*";
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + 1;
                    String strSubstring = str.substring(i, i2);
                    this.extensionRegX += "[" + strSubstring.toLowerCase(Locale.ENGLISH) + strSubstring.toUpperCase(Locale.ENGLISH) + "]";
                    i = i2;
                }
                this.extensionRegX += "$";
            }
            this.iCodecClass = cls;
        }

        public ICodec getInstance() {
            Class cls = this.iCodecClass;
            if (cls == null) {
                return null;
            }
            try {
                Object objNewInstance = cls.newInstance();
                if (objNewInstance == null) {
                    instantiationErrorMessage();
                    return null;
                }
                return (ICodec) objNewInstance;
            } catch (ExceptionInInitializerError unused) {
                instantiationErrorMessage();
                return null;
            } catch (IllegalAccessException unused2) {
                instantiationErrorMessage();
                return null;
            } catch (InstantiationException unused3) {
                instantiationErrorMessage();
                return null;
            } catch (SecurityException unused4) {
                instantiationErrorMessage();
                return null;
            }
        }

        private void instantiationErrorMessage() {
            SoundSystemConfig.errorMessage("Unrecognized ICodec implementation in method 'getInstance'.  Ensure that the implementing class has one public, parameterless constructor.");
        }
    }
}
