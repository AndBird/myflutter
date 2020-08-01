package example.com.myflutter;

import android.app.Application;
import android.util.Log;

import io.flutter.app.FlutterApplication;

public class TestApplication extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        Log.e("application", "application");
    }
}
