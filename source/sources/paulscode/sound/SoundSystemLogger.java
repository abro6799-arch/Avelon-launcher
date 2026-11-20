package paulscode.sound;

/* JADX INFO: loaded from: classes.dex */
public class SoundSystemLogger {
    public void message(String str, int i) {
        String str2 = "";
        for (int i2 = 0; i2 < i; i2++) {
            str2 = str2 + "    ";
        }
        System.out.println(str2 + str);
    }

    public void importantMessage(String str, int i) {
        String str2 = "";
        for (int i2 = 0; i2 < i; i2++) {
            str2 = str2 + "    ";
        }
        System.out.println(str2 + str);
    }

    public boolean errorCheck(boolean z, String str, String str2, int i) {
        if (z) {
            errorMessage(str, str2, i);
        }
        return z;
    }

    public void errorMessage(String str, String str2, int i) {
        String str3 = "";
        for (int i2 = 0; i2 < i; i2++) {
            str3 = str3 + "    ";
        }
        System.out.println(str3 + "Error in class '" + str + "'");
        System.out.println("    " + str3 + str2);
    }

    public void printStackTrace(Exception exc, int i) {
        StackTraceElement[] stackTrace;
        printExceptionMessage(exc, i);
        importantMessage("STACK TRACE:", i);
        if (exc == null || (stackTrace = exc.getStackTrace()) == null) {
            return;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (stackTraceElement != null) {
                message(stackTraceElement.toString(), i + 1);
            }
        }
    }

    public void printExceptionMessage(Exception exc, int i) {
        importantMessage("ERROR MESSAGE:", i);
        if (exc.getMessage() == null) {
            message("(none)", i + 1);
        } else {
            message(exc.getMessage(), i + 1);
        }
    }
}
