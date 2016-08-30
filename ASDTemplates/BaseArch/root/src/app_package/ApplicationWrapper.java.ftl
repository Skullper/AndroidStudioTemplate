package ${packageName};

<#if useMultiDex> 
import android.support.multidex.MultiDexApplication;
<#else>
import android.app.Application;
</#if>

import android.content.Context;
import android.content.res.Resources;

<#if useMultiDex>
public class ${classApplication} extends MultiDexApplication {
<#else>
public class ${classApplication} extends Application {
</#if>

    public static final String TAG = ${classApplication}.class.getSimpleName();

    private volatile static ${classApplication} instance;

    public static Context getContext() {
        return instance.getApplicationContext();
    }

    public static Resources getRes() {
        return instance.getResources();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
    }

}
