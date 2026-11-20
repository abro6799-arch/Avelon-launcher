package paulscode.sound;

/* JADX INFO: loaded from: classes.dex */
public class Vector3D {
    public float x;
    public float y;
    public float z;

    public Vector3D() {
        this.x = 0.0f;
        this.y = 0.0f;
        this.z = 0.0f;
    }

    public Vector3D(float f, float f2, float f3) {
        this.x = f;
        this.y = f2;
        this.z = f3;
    }

    public Vector3D clone() {
        return new Vector3D(this.x, this.y, this.z);
    }

    public Vector3D cross(Vector3D vector3D, Vector3D vector3D2) {
        float f = vector3D.y;
        float f2 = vector3D2.z;
        float f3 = vector3D2.y;
        float f4 = vector3D.z;
        float f5 = vector3D2.x;
        float f6 = vector3D.x;
        return new Vector3D((f * f2) - (f3 * f4), (f4 * f5) - (f2 * f6), (f6 * f3) - (f5 * f));
    }

    public Vector3D cross(Vector3D vector3D) {
        float f = this.y;
        float f2 = vector3D.z;
        float f3 = vector3D.y;
        float f4 = this.z;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = vector3D.x;
        float f7 = this.x;
        return new Vector3D(f5, (f4 * f6) - (f2 * f7), (f7 * f3) - (f6 * f));
    }

    public float dot(Vector3D vector3D, Vector3D vector3D2) {
        return (vector3D.x * vector3D2.x) + (vector3D.y * vector3D2.y) + (vector3D.z * vector3D2.z);
    }

    public float dot(Vector3D vector3D) {
        return (this.x * vector3D.x) + (this.y * vector3D.y) + (this.z * vector3D.z);
    }

    public Vector3D add(Vector3D vector3D, Vector3D vector3D2) {
        return new Vector3D(vector3D.x + vector3D2.x, vector3D.y + vector3D2.y, vector3D.z + vector3D2.z);
    }

    public Vector3D add(Vector3D vector3D) {
        return new Vector3D(this.x + vector3D.x, this.y + vector3D.y, this.z + vector3D.z);
    }

    public Vector3D subtract(Vector3D vector3D, Vector3D vector3D2) {
        return new Vector3D(vector3D.x - vector3D2.x, vector3D.y - vector3D2.y, vector3D.z - vector3D2.z);
    }

    public Vector3D subtract(Vector3D vector3D) {
        return new Vector3D(this.x - vector3D.x, this.y - vector3D.y, this.z - vector3D.z);
    }

    public void normalize() {
        float f = this.x;
        float f2 = this.y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.z;
        double dSqrt = Math.sqrt(f3 + (f4 * f4));
        this.x = (float) (((double) this.x) / dSqrt);
        this.y = (float) (((double) this.y) / dSqrt);
        this.z = (float) (((double) this.z) / dSqrt);
    }
}
